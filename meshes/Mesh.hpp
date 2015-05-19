#ifndef MESHES_MESH_H
#define MESHES_MESH_H

#include <vector>
#include <map>
#include <iostream>
#include <math.h>

#include <glm/glm.hpp>


#include <external/assimp-3.0.1270/include/assimp/Importer.hpp>
#include <external/assimp-3.0.1270/include/assimp/scene.h>
#include <external/assimp-3.0.1270/include/assimp/postprocess.h>

// Include GLEW
#include <GL/glew.h>
#include "../shaders/Shader.hpp"

#include "../textures/Texture.hpp"


struct Vertex {
    glm::vec3 Position;
    glm::vec3 Normal;
    glm::vec2 TexCoords;
};



class Mesh
{

public :
    /* Mesh Data */

    std::vector<Vertex> vertices;
    std::vector<GLuint> indices;
    std::vector<Texture> textures;


    /* Functions */
    Mesh(std::vector<Vertex> vertices, std::vector<GLuint> indices, std::vector<Texture> textures);
    Mesh();
    ~Mesh();

    void Draw(Shader shader);
    void addCubemapTexture(const char * cubeImagePath[]);
    void add2DTexture(const char * imagePath);


private :
    /* Render Data
     * VAO = A Vertex Array Object (VAO) is an object which contains one or more Vertex Buffer Objects
     * and is designed to store the information for a complete rendered object.
     *
     *
     * VBO = A Vertex Buffer Object (VBO) is a memory buffer in the high speed memory of your video card designed
     * to hold information about vertices.(color, normals, position)
     *
     * EBO = Element Buffer Objects (EBO) are used as source of indices during rendering of indexed primitives.
     *
     */

    GLuint VAO, VBO, EBO;


    protected:

    /* Functions */
    void setupMesh();
    void calculatePerVertexNormal(Vertex* vertex1, Vertex* vertex2, Vertex* vertex3);

};
#endif
