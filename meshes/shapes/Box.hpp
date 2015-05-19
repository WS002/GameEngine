//Call mesh.draw in Draw.

#ifndef MESHES_SHAPE_BOX_H
#define MESHES_SHAPE_BOX_H

#include "../Mesh.hpp"

class Box : public Mesh{

private:

    GLfloat width, height, depth;
    glm::vec3 centerCoordinates;

public:

    Box(glm::vec3 centerCoordinates, GLfloat width, GLfloat height, GLfloat depth);

private:
    void createBox();
};

#endif
