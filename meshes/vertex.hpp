#ifndef VERTEX_H
#define VERTEX_H

// Include GLM
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtx/transform.hpp>
#include <glm/gtc/type_ptr.hpp>

class vertex
{
private :
    glm::vec3 coordinates;
    int edgeCount;


public:
    vertex(glm::vec3 vCoordinates);

    const glm::vec3 getCoordinates();
    const int getEdgeCount();
    void setCoordinates(glm::vec3 newCoordinates);
    void setCoordinates(float x, float y, float z);

    float x(void) const;
    float y(void) const;
    float z(void) const;

};
#endif
