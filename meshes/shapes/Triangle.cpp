#include "Triangle.hpp"

Triangle::Triangle(glm::vec3 v1, glm::vec3 v2, glm::vec3 v3): Mesh::Mesh(){
    this->v1 = v1;
    this->v2 = v2;
    this->v3 = v3;

    this->createTriangle();

}



void Triangle::createTriangle() {

    //fill mesh parameters
    Vertex v1;
    v1.Position = this->v1;
    v1.TexCoords = glm::vec2(0.0f, 0.0f);
    Vertex v2;
    v2.Position = this->v2;
    v2.TexCoords = glm::vec2(0.5f, 1.0f);
    Vertex v3;
    v3.Position = this->v3;
    v3.TexCoords = glm::vec2(1.0f, 0.0f);

    this->calculatePerVertexNormal(&v1, &v2, &v3);



    this->vertices.push_back(v1);
    this->vertices.push_back(v2);
    this->vertices.push_back(v3);


    const unsigned int arr[] = {
        0, 1, 2

    };

    std::vector<GLuint> indexVector(arr, arr + sizeof(arr) / sizeof(unsigned int));
    this->indices = indexVector;

    this->setupMesh();
}


