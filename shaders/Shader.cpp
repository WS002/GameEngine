#include "Shader.hpp"

Shader::Shader(const GLchar* vertexSourcePath, const GLchar* fragmentSourcePath) {

    std::string vertexCode;
    std::string fragmentCode;

    try
    {



        std::ifstream vShaderFile(vertexSourcePath);
        std::ifstream fShaderFile(fragmentSourcePath);
        std::stringstream vShaderFileStream, fShaderFileStream;
        \

        if(vShaderFile)
            vShaderFileStream << vShaderFile.rdbuf();
        else
            std::cout << "ERROR_COULDNT_OPEN_VERTEX_SHADER_FILE "<< vertexSourcePath << std::endl;

        if(fShaderFile)
            fShaderFileStream << fShaderFile.rdbuf();
        else
            std::cout << "ERROR_COULDNT_OPEN_FRAGMENT_SHADER_FILE " << fragmentSourcePath << std::endl;

        vShaderFile.close();
        fShaderFile.close();

        vertexCode = vShaderFileStream.str();
        fragmentCode = fShaderFileStream.str();

    }
    catch(std::exception e)
    {
        std::cout << "Shader file not succesfully read!" << std::endl;
    }



    const GLchar* vShaderCode = vertexCode.c_str();
    const GLchar * fShaderCode = fragmentCode.c_str();
    // 2. Compile shaders
    GLuint vertex, fragment;
    GLint success;
    GLchar infoLog[512];






    // Vertex Shader
    vertex = glCreateShader(GL_VERTEX_SHADER);
    glShaderSource(vertex, 1, &vShaderCode, NULL);
    glCompileShader(vertex);
    // Print compile errors if any
    glGetShaderiv(vertex, GL_COMPILE_STATUS, &success);
    if (!success)
    {
       glGetShaderInfoLog(vertex, 512, NULL, infoLog);
       std::cout << "ERROR::SHADER::VERTEX::COMPILATION_FAILED\n" << infoLog << std::endl;
    }

    // Fragment Shader
    fragment = glCreateShader(GL_FRAGMENT_SHADER);
    glShaderSource(fragment, 1, &fShaderCode, NULL);
    glCompileShader(fragment);
    // Print compile errors if any
    glGetShaderiv(fragment, GL_COMPILE_STATUS, &success);
    if (!success)
    {
       glGetShaderInfoLog(fragment, 512, NULL, infoLog);
       std::cout << "ERROR::SHADER::FRAGMENT::COMPILATION_FAILED\n" << infoLog << std::endl;
    }

    // Shader Program
    this->Program = glCreateProgram();
    glAttachShader(this->Program, vertex);
    glAttachShader(this->Program, fragment);
    glLinkProgram(this->Program);
    // Print linking errors if any
    glGetProgramiv(this->Program, GL_LINK_STATUS, &success);
    if (!success)
    {
        glGetProgramInfoLog(this->Program, 512, NULL, infoLog);
        std::cout << "ERROR::SHADER::PROGRAM::LINKING_FAILED\n" << infoLog << std::endl;
    }    // Delete the shaders as they're linked into our program now and no longer necessery
    glDeleteShader(vertex);
    glDeleteShader(fragment);


}

void Shader::Use() {
    glUseProgram(this->Program);
}
