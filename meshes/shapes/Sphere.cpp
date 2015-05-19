#include "Sphere.hpp"

Sphere::Sphere(glm::vec3 centerCoordinates, GLfloat radius, int numIterations): Mesh::Mesh(){
    this->centerCoordinates = centerCoordinates;
    this->radius = radius;
    this->numIterations = numIterations;

    this->createSphere();

}



void Sphere::createSphere() {



    this->setupMesh();
}


