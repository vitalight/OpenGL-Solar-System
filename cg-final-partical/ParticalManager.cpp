#include "ParticalManager.h"


void printVec3(glm::vec3 vec)
{
	cout << "[" << vec.x << ", " << vec.y << ", " << vec.z << "]" << endl;
}

ParticalManager::ParticalManager(string name, string shaderName, int _amount)
{
	model = ResourceManager::GetModel(name);
	shader = ResourceManager::GetShader(shaderName);
	amount = _amount;
	modelMatrices = new glm::mat4[amount];
	for (int i = 0; i < amount/2; i++)
		generatePartical(true);

	glGenBuffers(1, &VBO);
	glBindBuffer(GL_ARRAY_BUFFER, VBO);
	glBufferData(GL_ARRAY_BUFFER, amount * sizeof(glm::mat4), &modelMatrices[0], GL_STREAM_DRAW);

	for (unsigned int i = 0; i < model->meshes.size(); i++)
	{
		unsigned int VAO = model->meshes[i].VAO;
		glBindVertexArray(VAO);
		// set attribute pointers for matrix (4 times vec4)
		glEnableVertexAttribArray(3);
		glVertexAttribPointer(3, 4, GL_FLOAT, GL_FALSE, sizeof(glm::mat4), (void*)0);
		glEnableVertexAttribArray(4);
		glVertexAttribPointer(4, 4, GL_FLOAT, GL_FALSE, sizeof(glm::mat4), (void*)(sizeof(glm::vec4)));
		glEnableVertexAttribArray(5);
		glVertexAttribPointer(5, 4, GL_FLOAT, GL_FALSE, sizeof(glm::mat4), (void*)(2 * sizeof(glm::vec4)));
		glEnableVertexAttribArray(6);
		glVertexAttribPointer(6, 4, GL_FLOAT, GL_FALSE, sizeof(glm::mat4), (void*)(3 * sizeof(glm::vec4)));

		glVertexAttribDivisor(3, 1);
		glVertexAttribDivisor(4, 1);
		glVertexAttribDivisor(5, 1);
		glVertexAttribDivisor(6, 1);

		glBindVertexArray(0);
	}
}

ParticalManager::~ParticalManager()
{
}

void ParticalManager::draw(Camera camera, Light light, float time)
{
	mytime += time;

	update(time);

	shader.Use().SetMatrix4("projection", camera.Projection);
	shader.SetMatrix4("view", camera.GetViewMatrix());
	shader.SetInteger("texture_diffuse1", 0);

	shader.SetVector3f("lightColor", light.Color);
	shader.SetVector3f("lightPos", light.Position);
	shader.SetVector2f("lightBias", light.LightBias);
	glActiveTexture(GL_TEXTURE0);
	glBindTexture(GL_TEXTURE_2D, model->textures_loaded[0].id); // note: we also made the textures_loaded vector public (instead of private) from the model class.
	for (unsigned int i = 0; i < model->meshes.size(); i++)
	{
		glBindVertexArray(model->meshes[i].VAO);
		glDrawElementsInstanced(GL_TRIANGLES, model->meshes[i].indices.size(), GL_UNSIGNED_INT, 0, status.size());
		glBindVertexArray(0);
	}

	deleteDeadPartical();
}

void ParticalManager::deleteDeadPartical()
{
	if ((int)status.size() < amount && mytime < PARTICAL_CLEANUP_CYCLE)
		return;

	for (int i = 0; i < (int)status.size(); i++) {
		if (status[i].position.x > PARTICAL_RANGE || status[i].position.x < -PARTICAL_RANGE ||
			status[i].position.y > PARTICAL_RANGE || status[i].position.y < -PARTICAL_RANGE ||
			status[i].position.z > PARTICAL_RANGE || status[i].position.z < -PARTICAL_RANGE) {
			status.erase(status.begin() + i, status.begin() + i + 1);
			//cout << "[log] delete partical #" << i << endl;
			i--;
		}
	}
}

void ParticalManager::update(float time)
{
	if ((int)status.size() < amount && mytime > PARTICAL_GENERATE_CYCLE)
		generatePartical();

	int size = status.size();
	for (int i = 0; i < size; i++) {
		glm::mat4 model;

		model = glm::translate(model, status[i].position);

		float scale = status[i].scale;
		model = glm::scale(model, glm::vec3(scale));

		status[i].angle += time * PARTICAL_ROTATE_SPEED;
		float rotAngle = status[i].angle;
		model = glm::rotate(model, rotAngle, glm::vec3(0.4f, 0.6f, 0.8f));
		status[i].position += status[i].velocity * time * PARTICAL_SPEED;

		// 4. now add to list of matrices
		modelMatrices[i] = model;
	}
	glBindBuffer(GL_ARRAY_BUFFER, VBO);
	glBufferData(GL_ARRAY_BUFFER, amount * sizeof(glm::mat4), &modelMatrices[0], GL_STREAM_DRAW);
}


void ParticalManager::generatePartical(bool justStarted)
{
	//cout << "[log] generate partical #" << status.size() << endl;
	mytime = 0;

	ParticalStatus part;
	part.axis = glm::vec3(0.6f, 0.4f, 0.8f);
	part.angle = (rand() % 20) / 20.0 * PI;
	part.scale = (rand() % 20) / 2.0f + 2.0f;
	int startDirection = rand() % 6;
	float val_1 = rand() % PARTICAL_RANGE - PARTICAL_RANGE/2.0,
		val_2 = rand() % PARTICAL_RANGE - PARTICAL_RANGE/2.0,
		val_3 = rand() % PARTICAL_CENTER_RANGE - PARTICAL_CENTER_RANGE/2.0,
		val_4 = rand() % PARTICAL_CENTER_RANGE - PARTICAL_CENTER_RANGE/2.0;
	switch (startDirection)
	{
	case 0:// up
		part.position = glm::vec3(val_1, PARTICAL_RANGE - 1, val_2);
		part.velocity = glm::normalize(glm::vec3(val_3, 1 - PARTICAL_RANGE, val_4) - part.position);
		break;
	case 1:// down
		part.position = glm::vec3(val_1, 1 - PARTICAL_RANGE, val_2);
		part.velocity = glm::normalize(glm::vec3(val_3, PARTICAL_RANGE - 1, val_4) - part.position);
		break;
	case 2:// left
		part.position = glm::vec3(1 - PARTICAL_RANGE, val_1, val_2);
		part.velocity = glm::normalize(glm::vec3(PARTICAL_RANGE - 1, val_3, val_4) - part.position);
		break;
	case 3:// right
		part.position = glm::vec3(PARTICAL_RANGE - 1, val_1, val_2);
		part.velocity = glm::normalize(glm::vec3(1 - PARTICAL_RANGE, val_3, val_4) - part.position);
		break;
	case 4:// front
		part.position = glm::vec3(val_1, val_2, PARTICAL_RANGE - 1);
		part.velocity = glm::normalize(glm::vec3(val_3, val_4, 1 - PARTICAL_RANGE) - part.position);
		break;
	case 5:// back
		part.position = glm::vec3(val_1, val_2, 1 - PARTICAL_RANGE);
		part.velocity = glm::normalize(glm::vec3(val_3, val_4, PARTICAL_RANGE - 1) - part.position);
		break;
	default:
		cout << "error: generate wrong direction" << endl;
		break;
	}
	part.velocity *= rand() % 4 + 1;
	if (justStarted)
		part.position += part.velocity * PARTICAL_START;
	status.push_back(part);
}