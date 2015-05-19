
#ifndef MESHES_SHAPE_TRIANGLE_H
#define MESHES_SHAPE_TRIANGLE_H

#include "../Mesh.hpp"

class Triangle : public Mesh{

private:

    glm::vec3 v1, v2, v3;

public:

    Triangle(glm::vec3 v1, glm::vec3 v2, glm::vec3 v3);
    //call in constructor


private :
    void createTriangle();
};
#endif
