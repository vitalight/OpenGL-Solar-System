#include "Model.h"

Model::Model(Shader shader, string const &path, glm::vec3 offset, bool gamma)
	: gammaCorrection(gamma), shader(shader), offset(offset)
{
	loadModel(path);
}

Model::Model(Shader shader, vector<Vertex> &vertices, vector<unsigned int> &indices)
{
	cout << "Loading vertices..." << endl;
	this->shader = shader;
	meshes.push_back(Mesh(vertices, indices));
}

void Model::Draw(Light light, Camera camera, glm::vec3 position,
	glm::vec3 size, GLfloat rotate, glm::vec3 axis, bool isPlanet)
{
	shader.Use();
	shader.SetMatrix4("projection", camera.Projection);
	shader.SetMatrix4("view", camera.GetViewMatrix());
	if (brightness >= 0)
		shader.SetFloat("brightness", brightness);

	glm::mat4 rock;
	// First translate (transformations are: scale happens first, then rotation and then finall translation happens; reversed order)
	rock = glm::translate(rock, glm::vec3(position));
	// Move origin of rotation to center of quad
	rock = glm::translate(rock, glm::vec3(0.5f * size.x, 0.5f * size.y, 0.0f));

	// Then rotate
	rock = glm::rotate(rock, rotate, axis);
	if (isPlanet)
		rock = glm::rotate(rock, -PI / 2, glm::vec3(1.0f, 0, 0));
	// Move origin back
	rock = glm::translate(rock, glm::vec3(-0.5f * size.x, -0.5f * size.y, 0.0f));
	// Last scale
	rock = glm::scale(rock, glm::vec3(size));
	shader.SetMatrix4("model", rock);

	for (unsigned int i = 0; i < meshes.size(); i++)
		meshes[i].Draw(light, camera, shader);
}

unsigned int Model::TextureFromFile(const string &filename, bool gamma)
{
	unsigned int textureID;
	glGenTextures(1, &textureID);

	int width, height, nrComponents;
	unsigned char *data = stbi_load(filename.c_str(), &width, &height, &nrComponents, 0);
	if (data)
	{
		GLenum format;
		if (nrComponents == 1)
			format = GL_RED;
		else if (nrComponents == 3)
			format = GL_RGB;
		else if (nrComponents == 4)
			format = GL_RGBA;

		glBindTexture(GL_TEXTURE_2D, textureID);
		glTexImage2D(GL_TEXTURE_2D, 0, format, width, height, 0, format, GL_UNSIGNED_BYTE, data);
		glGenerateMipmap(GL_TEXTURE_2D);

		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_LINEAR);
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

		stbi_image_free(data);
	}
	else
	{
		std::cout << "Texture failed to load at path: " << filename << std::endl;
		stbi_image_free(data);
		exit(-1);
	}

	return textureID;
}

unsigned int Model::TextureFromFile(const char *path, const string &directory, bool gamma)
{
	string filename = string(path);
	filename = directory + '/' + filename;
	return TextureFromFile(filename, gamma);
}

void Model::loadModel(string const &path)
{
	// read file via ASSIMP
	Assimp::Importer importer;
	const aiScene* scene = importer.ReadFile(path, aiProcess_Triangulate | aiProcess_FlipUVs | aiProcess_CalcTangentSpace);

	if (!scene || scene->mFlags & AI_SCENE_FLAGS_INCOMPLETE || !scene->mRootNode)
	{
		cout << "ERROR::ASSIMP:: " << importer.GetErrorString() << endl;
		return;
	}
	// retrieve the directory path of the filepath
	directory = path.substr(0, path.find_last_of('/'));

	// process ASSIMP's root node recursively
	processNode(scene->mRootNode, scene);
}

void Model::processNode(aiNode *node, const aiScene *scene)
{
	// process each mesh located at the current node
	for (unsigned int i = 0; i < node->mNumMeshes; i++)
	{
		// the node object only contains indices to index the actual objects in the scene. 
		// the scene contains all the data, node is just to keep stuff organized (like relations between nodes).
		aiMesh* mesh = scene->mMeshes[node->mMeshes[i]];
		meshes.push_back(processMesh(mesh, scene));
	}
	// after we've processed all of the meshes (if any) we then recursively process each of the children nodes
	for (unsigned int i = 0; i < node->mNumChildren; i++)
	{
		processNode(node->mChildren[i], scene);
	}

}

Mesh Model::processMesh(aiMesh *mesh, const aiScene *scene)
{
	vector<Vertex> vertices;
	vector<unsigned int> indices;
	vector<Texture> textures;

	// Walk through each of the mesh's vertices, normals and texCoords
	bool hasNormal = true;
	for (unsigned int i = 0; i < mesh->mNumVertices; i++)
	{
		Vertex vertex;
		glm::vec3 vector; 

		vector.x = mesh->mVertices[i].x;
		vector.y = mesh->mVertices[i].y;
		vector.z = mesh->mVertices[i].z;
		vertex.Position = vector + offset;
		// normals
		if (mesh->mNormals) {
			vector.x = mesh->mNormals[i].x;
			vector.y = mesh->mNormals[i].y;
			vector.z = mesh->mNormals[i].z;
		}
		else {
			hasNormal = false;
			vector.x = 0;
			vector.y = 0;
			vector.z = 0;
		}
		vertex.Normal = vector;
		// texture coordinates
		if (mesh->mTextureCoords[0]) // does the mesh contain texture coordinates?
		{
			glm::vec2 vec;
			// a vertex can contain up to 8 different texture coordinates. We thus make the assumption that we won't 
			// use models where a vertex can have multiple texture coordinates so we always take the first set (0).
			vec.x = mesh->mTextureCoords[0][i].x;
			vec.y = mesh->mTextureCoords[0][i].y;
			vertex.TexCoords = vec;
		}
		else
			vertex.TexCoords = glm::vec2(0.0f, 0.0f);
		//// tangent
		if (mesh->mTangents) {
			vector.x = mesh->mTangents[i].x;
			vector.y = mesh->mTangents[i].y;
			vector.z = mesh->mTangents[i].z;
		}
		else {
			vector.x = 0;
			vector.y = 0;
			vector.z = 0;
		}
		vertex.Tangent = vector;
		// bitangent
		if (mesh->mBitangents) {
			vector.x = mesh->mBitangents[i].x;
			vector.y = mesh->mBitangents[i].y;
			vector.z = mesh->mBitangents[i].z;
		}
		else {
			vector.x = 0;
			vector.y = 0;
			vector.z = 0;
		}
		vertex.Bitangent = vector;

		vertices.push_back(vertex);
	}
	// now wak through each of the mesh's faces (a face is a mesh its triangle) and retrieve the corresponding vertex indices.
	for (unsigned int i = 0; i < mesh->mNumFaces; i++)
	{
		aiFace face = mesh->mFaces[i];
		// retrieve all indices of the face and store them in the indices vector
		for (unsigned int j = 0; j < face.mNumIndices; j++)
			indices.push_back(face.mIndices[j]);

		// if it doesn't contain normal, calculate them
		if (!hasNormal)
		{
			for (unsigned int k = 0; k < face.mNumIndices - 2; k += 3)
			{
				glm::vec3 normal = glm::normalize(glm::cross(vertices[face.mIndices[k]].Position - vertices[face.mIndices[k+2]].Position,
					vertices[face.mIndices[k + 1]].Position - vertices[face.mIndices[k]].Position));
				vertices[face.mIndices[k]].Normal = normal;
				vertices[face.mIndices[k+1]].Normal = normal;
				vertices[face.mIndices[k+2]].Normal = normal;
			}
		}
	}

	// process materials
	aiMaterial* material = scene->mMaterials[mesh->mMaterialIndex];
	glm::vec3 color = loadColors(material);

	// 1. diffuse maps
	vector<Texture> diffuseMaps = loadMaterialTextures(material, aiTextureType_DIFFUSE, "texture_diffuse");
	textures.insert(textures.end(), diffuseMaps.begin(), diffuseMaps.end());
	// 2. specular maps
	vector<Texture> specularMaps = loadMaterialTextures(material, aiTextureType_SPECULAR, "texture_specular");
	textures.insert(textures.end(), specularMaps.begin(), specularMaps.end());
	// 3. normal maps
	std::vector<Texture> normalMaps = loadMaterialTextures(material, aiTextureType_HEIGHT, "texture_normal");
	textures.insert(textures.end(), normalMaps.begin(), normalMaps.end());
	// 4. height maps
	std::vector<Texture> heightMaps = loadMaterialTextures(material, aiTextureType_AMBIENT, "texture_height");
	textures.insert(textures.end(), heightMaps.begin(), heightMaps.end());

	// return a mesh object created from the extracted mesh data
	return Mesh(vertices, indices, textures, color);
}

vector<Texture> Model::loadMaterialTextures(aiMaterial *mat, aiTextureType type, string typeName)
{
	vector<Texture> textures;
	for (unsigned int i = 0; i < mat->GetTextureCount(type); i++)
	{
		aiString str;
		mat->GetTexture(type, i, &str);
		// check if texture was loaded before and if so, continue to next iteration: skip loading a new texture
		bool skip = false;
		for (unsigned int j = 0; j < textures_loaded.size(); j++)
		{
			if (std::strcmp(textures_loaded[j].path.data(), str.C_Str()) == 0)
			{
				textures.push_back(textures_loaded[j]);
				skip = true; // a texture with the same filepath has already been loaded, continue to next one. (optimization)
				break;
			}
		}
		if (!skip)
		{   // if texture hasn't been loaded already, load it
			Texture texture;
			texture.id = TextureFromFile(str.C_Str(), this->directory);
			texture.type = typeName;
			texture.path = str.C_Str();
			textures.push_back(texture);
			textures_loaded.push_back(texture);  // store it as texture loaded for entire model, to ensure we won't unnecesery load duplicate textures.
		}
	}
	return textures;
}

glm::vec3 Model::loadColors(aiMaterial *mat)
{
	aiColor4D color;
	mat->Get(AI_MATKEY_COLOR_DIFFUSE, color);
	return glm::vec3(color.r, color.g, color.b);
}


