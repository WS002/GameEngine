
#ifndef MESHES_SHAPE_SPHERE_H
#define MESHES_SHAPE_SPHERE_H

#include "../Mesh.hpp"

class Sphere : public Mesh{

private:

    GLfloat radius;
    int numIterations;
    glm::vec3 centerCoordinates;

public:

    Sphere(glm::vec3 centerCoordinates, GLfloat radius, int numIterations);

private:
    void createSphere();
};

#endif
