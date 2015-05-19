#ifndef TRIANGLE_H
#define TRIANGLE_H

#include <vector>
#include "vertex.hpp"


class triangle
{
private:
    std::vector<vertex> vertices;
    glm::vec3 normal;

public:
    //Constructors
    triangle(std::vector<vertex> tVertices, glm::vec3 tNormal);
    triangle(std::vector<vertex> tVertices);

    triangle(glm::vec3 v0, glm::vec3 v1, glm::vec3 v2);

    //TODO This should be in shape/sphere class
    void mapCubeToSphere();

    //TODO This should be in mesh/shape class
    void copyToBuffer(std::vector<float> &vertexBuffer);

    //Getters and Setters
    const glm::vec3 getNormal() ;
    const std::vector<vertex> getVertices() ;
};

#endif
