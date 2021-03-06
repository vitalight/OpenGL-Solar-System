#include "ResourceManager.h"

// Instantiate static variables
std::map<std::string, Shader> ResourceManager::Shaders;
std::map<std::string, Model*> ResourceManager::Models;

Shader ResourceManager::LoadShader(const GLchar *vShaderFile, const GLchar *fShaderFile, const GLchar *gShaderFile, std::string name)
{
	Shaders[name] = loadShaderFromFile(vShaderFile, fShaderFile, gShaderFile);
	return Shaders[name];
}

Shader ResourceManager::LoadShader(const GLchar * shaderName)
{
	GLchar vShaderFile[32],
		fShaderFile[32];
	sprintf_s(vShaderFile, "glsl/%s.vs", shaderName);
	sprintf_s(fShaderFile, "glsl/%s.fs", shaderName);
	Shaders[shaderName] = loadShaderFromFile(vShaderFile, fShaderFile, nullptr);
	return Shaders[shaderName];
}

Shader ResourceManager::GetShader(std::string name)
{
	if (Shaders.find(name) == Shaders.end()) {
		std::cout << "Error::ResourceManager::GetShader: No shader named '" << name << "'" << std::endl;
		exit(-1);
	}
	return Shaders[name];
}

Model *ResourceManager::LoadModel(std::string path, std::string name, std::string shaderName, glm::vec3 offset, bool gamma)
{
	cout << "Loading from [" << path << "]..." << endl;
	Models[name] = new Model(Shaders[shaderName], path, offset, gamma);
	return Models[name];
}

Model *ResourceManager::LoadModel(std::string name, std::string shaderName, glm::vec3 offset)
{
	cout << "Loading from [" << name << "]..." << endl;
	Models[name] = new Model(Shaders[shaderName], "resources/objects/" + name + "/" + name + ".obj", offset, false);
	return Models[name];
}

Model *ResourceManager::LoadFireModel(std::string shaderName, std::string texturePath)
{
	cout << "Loading Fire Model" << endl;
	if (Models["fire"] == nullptr) {
		vector<Vertex> vertices;
		Vertex v1, v2, v3, v4;
		v1.Position = glm::vec3(-0.5, 0.5, 0);
		v1.TexCoords = glm::vec2(0, 0);
		v2.Position = glm::vec3(0.5, 0.5, 0);
		v2.TexCoords = glm::vec2(1, 0);
		v3.Position = glm::vec3(0.5, -0.5, 0);
		v3.TexCoords = glm::vec2(1, 1);
		v4.Position = glm::vec3(-0.5, -0.5, 0);
		v4.TexCoords = glm::vec2(0, 1);
		vertices.push_back(v1);
		vertices.push_back(v2);
		vertices.push_back(v3);
		vertices.push_back(v4);

		vector<unsigned int> indices;
		indices.push_back(3);
		indices.push_back(1);
		indices.push_back(0);
		indices.push_back(3);
		indices.push_back(2);
		indices.push_back(1);
		
		Model *fire = new Model(GetShader(shaderName), vertices, indices);
		Models["fire"] = fire;
		Texture texture;
		texture.id = Models["fire"]->TextureFromFile(texturePath);
		texture.type = "texture_diffuse";
		texture.path = texturePath.c_str();
		Models["fire"]->textures_loaded.push_back(texture);
		fire->meshes[0].textures.push_back(texture);
	}
	return Models["fire"];
}

Model * ResourceManager::LoadPlanetModel(std::string name, std::string shaderName, glm::vec3 offset)
{
	cout << "Loading from [" << name << "]..." << endl;
	if (Models["earth"] == nullptr) {
		LoadModel("earth", "texture", glm::vec3(0));
	}
	Models[name] = new Model(*Models["earth"]);
	std::string texturePath = "resources/objects/planetTextures/2k_" + name + ".jpg";
	Texture texture;
	texture.id = Models[name]->TextureFromFile(texturePath);
	texture.type = "texture_diffuse";
	texture.path = texturePath.c_str();
	Models[name]->textures_loaded.push_back(texture);
	Models[name]->meshes[0].textures[0] = texture;
	Models[name]->shader = GetShader(shaderName);
	return Models[name];
}

Model *ResourceManager::GetModel(std::string name)
{
	if (Models.find(name) == Models.end()) {
		std::cout << "Error::ResourceManager::GetModel: No model named '" << name << "'" << std::endl;
		exit(-1);
	}
	return Models[name];
}

void ResourceManager::Clear()
{
	// (Properly) delete all shaders	
	for (auto iter : Shaders)
		glDeleteProgram(iter.second.ID);
}

Shader ResourceManager::loadShaderFromFile(const GLchar *vShaderFile, const GLchar *fShaderFile, const GLchar *gShaderFile)
{
	// 1. Retrieve the vertex/fragment source code from filePath
	std::string vertexCode;
	std::string fragmentCode;
	std::string geometryCode;
	try
	{
		// Open files
		std::ifstream vertexShaderFile(vShaderFile);
		std::ifstream fragmentShaderFile(fShaderFile);

		if (!vertexShaderFile) {
			std::cout << "Error::ResourceManager::loadShaderFromFile: file '" << vShaderFile << "' don't exist." << std::endl;
			exit(-1);
		}

		if (!fragmentShaderFile) {
			std::cout << "Error::ResourceManager::loadShaderFromFile: file '" << fShaderFile << "' don't exist." << std::endl;
			exit(-1);
		}

		std::stringstream vShaderStream, fShaderStream;
		// Read file's buffer contents into streams
		vShaderStream << vertexShaderFile.rdbuf();
		fShaderStream << fragmentShaderFile.rdbuf();
		// close file handlers
		vertexShaderFile.close();
		fragmentShaderFile.close();
		// Convert stream into string
		vertexCode = vShaderStream.str();
		fragmentCode = fShaderStream.str();
		// If geometry shader path is present, also load a geometry shader
		if (gShaderFile != nullptr)
		{
			std::ifstream geometryShaderFile(gShaderFile);
			std::stringstream gShaderStream;
			gShaderStream << geometryShaderFile.rdbuf();
			geometryShaderFile.close();
			geometryCode = gShaderStream.str();
		}
	}
	catch (std::exception e)
	{
		std::cout << "ERROR::SHADER: Failed to read shader files" << std::endl;
	}
	const GLchar *vShaderCode = vertexCode.c_str();
	const GLchar *fShaderCode = fragmentCode.c_str();
	const GLchar *gShaderCode = geometryCode.c_str();
	// 2. Now create shader object from source code
	Shader shader;
	shader.Compile(vShaderCode, fShaderCode, gShaderFile != nullptr ? gShaderCode : nullptr);
	return shader;
}