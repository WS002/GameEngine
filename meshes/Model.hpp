#if 0
#ifndef MESHES_MODEL_HPP
#define MESHES_MODEL_HPP



// Include GLM
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtx/transform.hpp>
#include <glm/gtc/type_ptr.hpp>

#include <external/assimp-3.0.1270/include/assimp/Importer.hpp>
#include <external/assimp-3.0.1270/include/assimp/scene.h>
#include <external/assimp-3.0.1270/include/assimp/postprocess.h>

// Include GLEW
#include <GL/glew.h>

//#include "Mesh.hpp"


class Model
{
    public:

        Model(GLchar* path)
        {
            this->loadModel(path);
        }

        void Draw(Shader shader);

    private:

        std::vector<Mesh> meshes;
        std::string directory;
        std::vector<Texture> textures_loaded;

        void loadModel(std::string path);
        void processNode(aiNode* node, const aiScene* scene);
        Mesh processMesh(aiMesh* mesh, const aiScene* scene);
        std::vector<Texture> loadMaterialTextures(aiMaterial* mat, aiTextureType type, std::string typeName);


};
#endif
#endif
