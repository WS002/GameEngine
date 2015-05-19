#include "Mesh.hpp"

Mesh::Mesh(std::vector<Vertex> vertices, std::vector<GLuint> indices, std::vector<Texture> textures) {
    this->vertices = vertices;
    this->indices = indices;
    this->textures = textures;

    this->setupMesh();
}

Mesh::Mesh(){}
Mesh::~Mesh() {
    glDeleteBuffers(1, &this->VAO);
    glDeleteBuffers(1, &this->VBO);
    glDeleteBuffers(1, &this->EBO);
}



 void Mesh::setupMesh() {


    glGenVertexArrays(1, &this->VAO);
    glBindVertexArray(this->VAO);

    glGenBuffers(1, &this->VBO);
    glBindBuffer(GL_ARRAY_BUFFER, this->VBO);
    glBufferData(GL_ARRAY_BUFFER, this->vertices.size() * sizeof(Vertex),
                 this->vertices.data(), GL_STATIC_DRAW);

    glGenBuffers(1, &this->EBO);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, this->EBO);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, this->indices.size() * sizeof(GLuint),
                 this->indices.data(), GL_STATIC_DRAW);


    // Vertex Positions
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(Vertex),
                         (void*)0);

    // Vertex Normals
    glEnableVertexAttribArray(1);
    glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, sizeof(Vertex),
                         (GLvoid*)offsetof(Vertex, Normal));

    // Vertex Texture Coords
    glEnableVertexAttribArray(2);
    glVertexAttribPointer(2, 2, GL_FLOAT, GL_FALSE, sizeof(Vertex),
                         (GLvoid*)offsetof(Vertex, TexCoords));

    glBindVertexArray(0);

}

 void static normalize(glm::vec3 * v) {
    v->x /= sqrt(v->x * v->x + v->y * v->y + v->z * v->z);
    v->y /= sqrt(v->x * v->x + v->y * v->y + v->z * v->z);
    v->z /= sqrt(v->x * v->x + v->y * v->y + v->z * v->z);
 }

 void Mesh::addCubemapTexture(const char * cubeImagePath[])
 {
     Texture texture(cubeImagePath);
     this->textures.push_back(texture);
 }

void Mesh::add2DTexture(const char * imagePath)
{
    Texture texture(imagePath);
    this->textures.push_back(texture);
}


void Mesh::Draw(Shader shader)
{
    if(this->textures.size() > 0) {
        for(int i = 0; i < this->textures.size(); i++) {
            glActiveTexture(GL_TEXTURE0 + i);
            glUniform1f(glGetUniformLocation(shader.Program, "texture_" +i), i);
            glBindTexture(GL_TEXTURE_2D, this->textures[i].id);
        }
    }
    // Draw mesh
    glBindVertexArray(this->VAO);

    glDrawElements(GL_TRIANGLES, this->indices.size(), GL_UNSIGNED_INT, (void*)0);
    glBindVertexArray(0);
}

void Mesh::calculatePerVertexNormal(Vertex* vertex1, Vertex* vertex2, Vertex* vertex3) {
    //Vertex 1
    glm::vec3 u1 = vertex2->Position - vertex1->Position;
    glm::vec3 v1 = vertex3->Position - vertex1->Position;

    glm::vec3 normal1;
    normal1.x = u1.y * v1.z - u1.z * v1.y;
    normal1.y = u1.z * v1.x - u1.x * v1.z;
    normal1.z = u1.x * v1.y - u1.y * v1.x;

    normalize(&normal1);
    vertex1->Normal += normal1;
    vertex2->Normal += normal1;
    vertex3->Normal += normal1;
   }


