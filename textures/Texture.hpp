#ifndef TEXTURES_TEXTURE_HPP
#define TEXTURES_TEXTURE_HPP

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <GL/glew.h>
#include <glfw3.h>
//TODO: remove
#include <iostream>

#include <glm/glm.hpp>
#include <vector>
#include <math.h>

class Texture {

private:

const char * imagePath;
const char * cubeImagePath[];

std::vector<float> normalMap;
std::vector<int> data;
std::vector<unsigned char> dataPass;
unsigned char header[54];
unsigned int width, height;
unsigned int imageSize;


public:
unsigned int id;

Texture(const char * imagePath);
Texture(const char * cubeImagePath[]);
~Texture();

private:
void loadCubemap();
void loadTexture2D();
void computeNormalMap();
float pixelToGrayscale(int w, int h);
inline const int operator()(int x, int y, int c) const;
//inline unsigned int& operator[](int x, int y, int c);


};


#endif
