
#include "triangle.hpp"

    triangle::triangle(std::vector<vertex> tVertices, glm::vec3 tNormal)
    {
        vertices = tVertices;
        normal = tNormal;
    }

    triangle::triangle(std::vector<vertex> tVertices)
    {
        vertices = tVertices;
    }

    triangle::triangle(glm::vec3 v0, glm::vec3 v1, glm::vec3 v2)
    {


        vertex vertex0(v0);
        vertex vertex1(v1);
        vertex vertex2(v2);

        vertices.push_back(vertex0);
        vertices.push_back(vertex1);
        vertices.push_back(vertex2);
    }


    void triangle::mapCubeToSphere() {
        for(int i = 0; i < vertices.size(); i++)
        {
            glm::vec3 vPosition = vertices[i].getCoordinates();

            float x2 = vPosition.x * vPosition.x;
            float y2 = vPosition.y * vPosition.y;
            float z2 = vPosition.z * vPosition.z;

            float x = vPosition.x * sqrt( 1.0f - ( y2 * 0.5f ) - ( z2 * 0.5f ) + ( (y2 * z2) / 3.0f ) );
            float y = vPosition.y * sqrt( 1.0f - ( z2 * 0.5f ) - ( x2 * 0.5f ) + ( (z2 * x2) / 3.0f ) );
            float z = vPosition.z * sqrt( 1.0f - ( x2 * 0.5f ) - ( y2 * 0.5f ) + ( (x2 * y2) / 3.0f ) );

            vertices[i].setCoordinates(x, y, z);
        }
    }

    void triangle::copyToBuffer(std::vector<float> &vertexBuffer) {
        for(int i = 0; i < vertices.size(); i++) {
            glm::vec3 coordinates = vertices[i].getCoordinates();

            vertexBuffer.push_back(coordinates.x);
            vertexBuffer.push_back(coordinates.y);
            vertexBuffer.push_back(coordinates.z);
        }
    }

    const glm::vec3 triangle::getNormal() {
        return normal;
    }

    const std::vector<vertex> triangle::getVertices() {
        return vertices;
    }
