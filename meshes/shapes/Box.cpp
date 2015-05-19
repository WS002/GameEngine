#include "Box.hpp"

Box::Box(glm::vec3 centerCoordinates, GLfloat width, GLfloat height, GLfloat depth): Mesh::Mesh(){
    this->centerCoordinates = centerCoordinates;
    this->width = width;
    this->height = height;
    this->depth = depth;

    this->createBox();

}



void Box::createBox() {

    //fill mesh parameters
    //Front
    Vertex v1;
    v1.Position = glm::vec3(centerCoordinates.x - width/2, centerCoordinates.y + height/2, centerCoordinates.z + depth/2);
    v1.TexCoords = glm::vec2(0, 1);
    v1.Normal = glm::vec3(0.0f, 0.0f, 1.0f);
    Vertex v2;
    v2.Position = glm::vec3(centerCoordinates.x - width/2, centerCoordinates.y - height/2, centerCoordinates.z + depth/2);
    v2.TexCoords = glm::vec2(0, 0);
    v2.Normal = v1.Normal;
    Vertex v3;
    v3.Position = glm::vec3(centerCoordinates.x + width/2, centerCoordinates.y - height/2, centerCoordinates.z + depth/2);
    v3.TexCoords = glm::vec2(1, 0);
    v3.Normal = v1.Normal;
    Vertex v4;
    v4.Position = glm::vec3(centerCoordinates.x + width/2, centerCoordinates.y + height/2, centerCoordinates.z + depth/2);
    v4.TexCoords = glm::vec2(1, 1);
    v4.Normal = v1.Normal;

    //Back
    Vertex v5;
    v5.Position = glm::vec3(centerCoordinates.x - width/2, centerCoordinates.y + height/2, centerCoordinates.z - depth/2);
    v5.TexCoords = glm::vec2(0, 1);
    v5.Normal = glm::vec3(0.0f, 0.0f, -1.0f);
    Vertex v6;
    v6.Position = glm::vec3(centerCoordinates.x - width/2, centerCoordinates.y - height/2, centerCoordinates.z - depth/2);
    v6.TexCoords = glm::vec2(0, 0);
    v6.Normal = v5.Normal;
    Vertex v7;
    v7.Position = glm::vec3(centerCoordinates.x + width/2, centerCoordinates.y - height/2, centerCoordinates.z - depth/2);
    v7.TexCoords = glm::vec2(1, 0);
    v7.Normal = v5.Normal;
    Vertex v8;
    v8.Position = glm::vec3(centerCoordinates.x + width/2, centerCoordinates.y + height/2, centerCoordinates.z - depth/2);
    v8.TexCoords = glm::vec2(1, 1);
    v8.Normal = v5.Normal;

   /* //Front
     this->calculatePerVertexNormal(&v1, &v2, &v4);
     this->calculatePerVertexNormal(&v4, &v2, &v3);
    //Left
     this->calculatePerVertexNormal(&v5, &v6, &v1);
     this->calculatePerVertexNormal(&v1, &v6, &v2);
    //Bottom
     this->calculatePerVertexNormal(&v6, &v2, &v7);
     this->calculatePerVertexNormal(&v7, &v2, &v3);
    //Right
     this->calculatePerVertexNormal(&v4, &v3, &v8);
     this->calculatePerVertexNormal(&v8, &v3, &v7);
    //Top
     this->calculatePerVertexNormal(&v5, &v1, &v8);
     this->calculatePerVertexNormal(&v8, &v1, &v4);
    //Back
     this->calculatePerVertexNormal(&v5, &v6, &v8);
     this->calculatePerVertexNormal(&v8, &v6, &v7);

    v1.Normal /= 5;
    v2.Normal /= 5;
    v3.Normal /= 4;
    v4.Normal /= 4;
    v5.Normal /= 3;
    v6.Normal /= 5;
    v7.Normal /= 4;
    v8.Normal /= 6;
*/
    //Top
    Vertex v9;
    v9.Position = v5.Position;
    v9.TexCoords = glm::vec2(0, 1);
    v9.Normal = glm::vec3(0.0f, 1.0f, 0.0f);
    Vertex v10;
    v10.Position = v1.Position;
    v10.TexCoords = glm::vec2(0, 0);
    v10.Normal = v9.Normal;
    Vertex v11;
    v11.Position = v4.Position;
    v11.TexCoords = glm::vec2(1, 0);
    v11.Normal = v9.Normal;
    Vertex v12;
    v12.Position = v8.Position;
    v12.TexCoords = glm::vec2(1, 1);
    v12.Normal = v9.Normal;
    //Bottom
    Vertex v13;
    v13.Position = v6.Position;
    v13.TexCoords = glm::vec2(0, 1);
    v13.Normal = glm::vec3(0.0f, -1.0f, 0.0f);
    Vertex v14;
    v14.Position = v2.Position;
    v14.TexCoords = glm::vec2(0, 0);
    v14.Normal = v13.Normal;
    Vertex v15;
    v15.Position = v3.Position;
    v15.TexCoords = glm::vec2(1, 0);
    v15.Normal = v13.Normal;
    Vertex v16;
    v16.Position = v7.Position;
    v16.TexCoords = glm::vec2(1, 1);
    v16.Normal = v13.Normal;
    //Left
    Vertex v17;
    v17.Position = v5.Position;
    v17.TexCoords = glm::vec2(0, 1);
    v17.Normal = glm::vec3(-1.0f, 0.0f, 0.0f);
    Vertex v18;
    v18.Position = v6.Position;
    v18.TexCoords = glm::vec2(0, 0);
    v18.Normal = v17.Normal;
    Vertex v19;
    v19.Position = v2.Position;
    v19.TexCoords = glm::vec2(1, 0);
    v19.Normal = v17.Normal;
    Vertex v20;
    v20.Position = v1.Position;
    v20.TexCoords = glm::vec2(1, 1);
    v20.Normal = v17.Normal;
    //Right
    Vertex v21;
    v21.Position = v4.Position;
    v21.TexCoords = glm::vec2(0, 1);
    v21.Normal = glm::vec3(1.0f, 0.0f, 0.0f);
    Vertex v22;
    v22.Position = v3.Position;
    v22.TexCoords = glm::vec2(0, 0);
    v22.Normal = v21.Normal;
    Vertex v23;
    v23.Position = v7.Position;
    v23.TexCoords = glm::vec2(1, 0);
    v23.Normal = v21.Normal;
    Vertex v24;
    v24.Position = v8.Position;
    v24.TexCoords = glm::vec2(1, 1);
    v24.Normal = v21.Normal;


    this->vertices.push_back(v1);
    this->vertices.push_back(v2);
    this->vertices.push_back(v3);
    this->vertices.push_back(v4);

    this->vertices.push_back(v5);
    this->vertices.push_back(v6);
    this->vertices.push_back(v7);
    this->vertices.push_back(v8);

    this->vertices.push_back(v9);
    this->vertices.push_back(v10);
    this->vertices.push_back(v11);
    this->vertices.push_back(v12);

    this->vertices.push_back(v13);
    this->vertices.push_back(v14);
    this->vertices.push_back(v15);
    this->vertices.push_back(v16);

    this->vertices.push_back(v17);
    this->vertices.push_back(v18);
    this->vertices.push_back(v19);
    this->vertices.push_back(v20);

    this->vertices.push_back(v21);
    this->vertices.push_back(v22);
    this->vertices.push_back(v23);
    this->vertices.push_back(v24);

    const unsigned int arr[] = {
        0, 1, 3,
        1, 2, 3,
        21, 20, 22,
        20, 22, 23,
        18, 17, 19,
        19, 16, 17,
        9, 10, 8,
        10, 8, 11,
        13, 12, 14,
        14, 12, 15,
        4, 5, 6,
        4, 6, 7
    };


    std::vector<GLuint> indexVector(arr, arr + sizeof(arr) / sizeof(unsigned int));
    this->indices = indexVector;

    this->setupMesh();
}


