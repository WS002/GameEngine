
#include "vertex.hpp"

vertex::vertex(glm::vec3 vCoordinates)
{
    edgeCount = 0;
    coordinates = vCoordinates;
}


//Returns pointer to coordinates
const glm::vec3 vertex::getCoordinates()
{
    return coordinates;
}

const int vertex::getEdgeCount()
{
    return edgeCount;
}

void vertex::setCoordinates(glm::vec3 newCoordinates)
{
    coordinates = newCoordinates;
}

void vertex::setCoordinates(float x, float y, float z)
{
    coordinates.x = x;
    coordinates.y = y;
    coordinates.z = z;
}



float vertex::x(void) const
{
  return coordinates.x;
}

float vertex::y(void) const
{
  return coordinates.y;
}

float vertex::z(void) const
{
  return coordinates.z;
}
