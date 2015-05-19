#include "Texture.hpp"


Texture::Texture(const char *imagePath) {
    this->imagePath = imagePath;
    this->loadTexture2D();

}

Texture::Texture(const char * cubeImagePath[]) {
    for(int i = 0; i < sizeof(*cubeImagePath)/sizeof(char) ; i++)
        this->cubeImagePath[i] = cubeImagePath[i];

    this->loadCubemap();

}

Texture::~Texture() {
}

//TODO: finish operators
inline const int Texture::operator()(int x, int y, int c) const{
  assert(x >= 0); assert (x < this->width);
  assert(y >= 0); assert (y < this->height);
  assert(c >= 0); assert (c < 3);
  return (this->data[c+3*(x+this->width*y)]);
}

/*inline unsigned int& Texture::operator[](int x, int y, int c){
  assert(x >= 0); assert (x < this->width);
  assert(y >= 0); assert (y < this->height);
  assert(c >= 0); assert (c < 3);
  return (this->normalMap[c+3*(x+this->width*y)]);
}*/

void Texture::loadCubemap() {
 //TODO set this->id, use this->imagePath
    GLenum cube[6] = {
        GL_TEXTURE_CUBE_MAP_POSITIVE_X,
        GL_TEXTURE_CUBE_MAP_NEGATIVE_X,
        GL_TEXTURE_CUBE_MAP_POSITIVE_Y,
        GL_TEXTURE_CUBE_MAP_NEGATIVE_Y,
        GL_TEXTURE_CUBE_MAP_POSITIVE_Z,
        GL_TEXTURE_CUBE_MAP_NEGATIVE_Z
    };



    for(int i = 0 ; i < 6; i++)
    {
        unsigned int dataPos;
        unsigned char * data;



        // Open the file
        FILE * file = fopen(this->cubeImagePath[i],"rb");
        if (!file)							    {printf("%s could not be opened. Are you in the right directory ? Don't forget to read the FAQ !\n", this->cubeImagePath[i]); getchar(); return;}

        // Read the header, i.e. the 54 first bytes

        // If less than 54 bytes are read, problem
        if ( fread(this->header, 1, 54, file)!=54 ){
            printf("Not a correct BMP file\n");
            return;
        }
        // A BMP files always begins with "BM"
        if ( this->header[0]!='B' || this->header[1]!='M' ){
            printf("Not a correct BMP file\n");
            return;
        }
        // Make sure this is a 24bpp file
        if ( *(int*)&(this->header[0x1E])!=0  )         {printf("Not a correct BMP file\n");    return;}
        if ( *(int*)&(this->header[0x1C])!=24 )         {printf("Not a correct BMP file\n");    return;}

        // Read the information about the image
        dataPos    = *(int*)&(this->header[0x0A]);
        this->imageSize  = *(int*)&(this->header[0x22]);
        this->width      = *(int*)&(this->header[0x12]);
        this->height     = *(int*)&(this->header[0x16]);

        // Some BMP files are misformatted, guess missing information
        if (this->imageSize==0)    this->imageSize=this->width*this->height*3; // 3 : one byte for each Red, Green and Blue component
        if (dataPos==0)      dataPos=54; // The BMP header is done that way

        // Create a buffer
        data = new unsigned char [imageSize];

        // Read the actual data from the file into the buffer
        fread(data,1,imageSize,file);

        // Everything is in memory now, the file wan be closed
        fclose (file);

        // Create one OpenGL texture
        glGenTextures(1, &this->id);

        // "Bind" the newly created texture : all future texture functions will modify this texture
        glBindTexture(GL_TEXTURE_CUBE_MAP, this->id);

        // Give the image to OpenGL
        glTexImage2D(cube[i], 0,GL_RGB, this->width, this->height, 0, GL_BGR, GL_UNSIGNED_BYTE, data);
//TODO fix
        // OpenGL has now copied the data. Free our own version
        delete [] data;

        glBindTexture(GL_TEXTURE_CUBE_MAP, 0);
    }

     glTexParameteri (GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
     glTexParameteri (GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
     glTexParameteri (GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_R, GL_CLAMP_TO_EDGE);
     glTexParameteri (GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
     glTexParameteri (GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);



}



void Texture::loadTexture2D() {

    printf("Reading image %s\n", this->imagePath);

    // Data read from the header of the BMP file
    unsigned int dataPos;
    // Actual RGB data
    unsigned char * data;

    // Open the file
    FILE * file = fopen(this->imagePath,"rb");
    if (!file)							    {printf("%s could not be opened. Are you in the right directory ? Don't forget to read the FAQ !\n", this->imagePath); getchar(); return;}

    // Read the header, i.e. the 54 first bytes

    // If less than 54 bytes are read, problem
    if ( fread(this->header, 1, 54, file)!=54 ){
        printf("Not a correct BMP file\n");
        return;
    }
    // A BMP files always begins with "BM"
    if ( this->header[0]!='B' || this->header[1]!='M' ){
        printf("Not a correct BMP file\n");
        return;
    }


    // Make sure this is a 24bpp file
    if ( *(int*)&(this->header[0x1E])!=0  )         {printf("Not a correct BMP file\n");    return;}
    if ( *(int*)&(this->header[0x1C])!=24 )         {printf("Not a correct BMP file\n");    return;}

    // Read the information about the image
    dataPos    = *(int*)&(this->header[0x0A]);
    this->imageSize  = *(int*)&(this->header[0x22]);
    this->width      = *(int*)&(this->header[0x12]);
    this->height     = *(int*)&(this->header[0x16]);

    // Some BMP files are misformatted, guess missing information
    if (this->imageSize==0)    this->imageSize=this->width*this->height*3; // 3 : one byte for each Red, Green and Blue component
    if (dataPos==0)      dataPos=54; // The BMP header is done that way

    // Create a buffer
    data = new unsigned char [this->imageSize];

    // Read the actual data from the file into the buffer
    fread(data,1,this->imageSize,file);

    // Everything is in memory now, the file wan be closed
    fclose (file);

    // Create one OpenGL texture
    glGenTextures(1, &this->id);

    // "Bind" the newly created texture : all future texture functions will modify this texture
    glBindTexture(GL_TEXTURE_2D, this->id);

    for(int i = 0 ; i < this->imageSize ; i++) {
        this->data.push_back((int)data[i]);
    }

    this->computeNormalMap();

    this->dataPass.reserve(this->data.size());
    for(int i = 0 ; i < this->data.size() ; i++) {
        this->dataPass[i] = this->data[i];
    }


    // Give the image to OpenGL
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, this->width, this->height, 0, GL_BGR, GL_UNSIGNED_BYTE, &this->dataPass[0]);




    delete [] data;


    // Poor filtering, or ...
    //glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
   // glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);

    // ... nice trilinear filtering.
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_LINEAR);
    glGenerateMipmap(GL_TEXTURE_2D);

    glBindTexture(GL_TEXTURE_2D, 0);
    // Save the ID of the texture we just created

}




float Texture::pixelToGrayscale(int w, int h) {

return  (0.2126 * (*this)(w, h, 0) + 0.7152 * (*this)(w, h, 1) +  0.0722 * (*this)(w, h, 2) );

}



void Texture::computeNormalMap() {
    //Mirror border pixels to solve overflow issue
    for(int h = 0; h < this->height; h++)
        for(int w = 0; w < this->width; w++) {

            int w_prev, w_next, h_prev, h_next;

            if((w - 1) < 0) w_prev = this->width-1;
            else w_prev = w - 1;
            if((w + 1) > (this->width - 1)) w_next = 0;
            else w_next = w + 1;

            if((h - 1) < 0) h_prev = this->height-1;
            else h_prev = h - 1;
            if((h + 1) > (this->height - 1)) h_next = 0;
            else h_next = h + 1;



            float xDelta = ( pixelToGrayscale(w_next, h) - pixelToGrayscale(w_prev, h) )/2;
            float yDelta = ( pixelToGrayscale(w, h_next) - pixelToGrayscale(w, h_prev) )/2;

            xDelta *=5;
            yDelta *=5;

            // Rescale -255 - 255 to 0 - 255
            xDelta = 127.5f + (0.5f * xDelta);
            yDelta = 127.5f + (0.5f * yDelta);

            this->normalMap.push_back(255.0f);
            this->normalMap.push_back(yDelta);
            this->normalMap.push_back(xDelta);


        }

 }




