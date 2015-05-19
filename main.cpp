// Include standard headers
#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <math.h>
#include <vector>

// Include GLEW
#include <GL/glew.h>

// Include GLFW
#include <glfw3.h>

GLFWwindow* window;

#define LOG(x) std::cout << x << std::endl

// Include GLM
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtx/transform.hpp>
#include <glm/gtc/type_ptr.hpp>


#include <shaders/Shader.hpp>
//#include <GameEngine/controls/controls.hpp>

#include <meshes/shapes/Box.hpp>
#include <meshes/shapes/Triangle.hpp>


static double elapsedTime = glfwGetTime();
static int frames = 0.0f;
static std::stringstream windowTitle;
static double currentTime;
static const unsigned int windowWidth = 1024;
static const unsigned int windowHeight = 768;


void showFPS() {
    currentTime = glfwGetTime();
    frames++;

    if(currentTime - elapsedTime >= 1.0f) {

        windowTitle << (double)frames/ (currentTime - elapsedTime) << " frames per second.\n";
        glfwSetWindowTitle(window, (windowTitle.str()).c_str() );
        //LOG(windowTitle.str());
        elapsedTime = currentTime;
        frames = 0;
    }





}


/*struct Vertex {
    glm::vec3 Position;
    glm::vec3 Normal;
    glm::vec2 TexCoords;
};
*/
int main( void )
{


    // Initialise GLFW
    if( !glfwInit() )
    {
        fprintf( stderr, "Failed to initialize GLFW\n" );
        return -1;
    }

    glfwWindowHint(GLFW_SAMPLES, 4);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    // Open a window and create its OpenGL context

    window = glfwCreateWindow( windowWidth, windowHeight, "Title", NULL, NULL);
    if( window == NULL ){
        fprintf( stderr, "Failed to open GLFW window. If you have an Intel GPU, they are not 3.3 compatible. Try the 2.1 version of the tutorials.\n" );
        glfwTerminate();
        return -1;
    }
    glfwMakeContextCurrent(window);

    // Initialize GLEW
    glewExperimental = true; // Needed for core profile
    if (glewInit() != GLEW_OK) {
        fprintf(stderr, "Failed to initialize GLEW\n");
        return -1;
    }


    // Ensure we can capture the escape key being pressed below
    glfwSetInputMode(window, GLFW_STICKY_KEYS, GL_TRUE);
    // Dark blue background
    glClearColor(0.5f, 0.5f, 0.5f, 1.0f);


    // Enable depth test
    glEnable(GL_DEPTH_TEST);
    // Accept fragment if it closer to the camera than the former one
    glDepthFunc(GL_LEQUAL);



    //Triangle triangle(glm::vec3(-1.0f, -1.0f, 3.0f), glm::vec3(1.0f, -1.0f, 3.0f), glm::vec3(0.0f, 1.0f, 3.0f));
    Box box(glm::vec3(0.0f, 0.0f, 0.0f), 0.5f, 0.5f, 0.5f);

    Shader shader("/home/nikolay/Projects/GameEngine/shaders/vertexShader", "/home/nikolay/Projects/GameEngine/shaders/fragmentShader");
    shader.Use();

    //triangle.add2DTexture("/home/nikolay/Projects/GameEngine/textureImages/bricks.bmp");

    box.add2DTexture("/home/nikolay/Projects/GameEngine/textureImages/stones.bmp");

    glm::mat4 projection, view, model;

    model = glm::mat4(1.0f);
    glm::vec3 viewVec = glm::vec3(0.0f, 0.0f, -1.0f);
    view = glm::translate(view, viewVec);
    projection = glm::perspective(45.0f, (GLfloat) windowWidth / (GLfloat) windowHeight, 0.1f, 100.f);
    glm::vec3 direction = glm::vec3(0.7, 1 , 0);
    glm::mat4 rotate = glm::mat4(1.0f);
    rotate = glm::rotate(rotate, -1.0f, direction);
   // model = rotate * model;


     double xpos, ypos;
//
        glm::vec3 lightPos(0.0f, 0.0f, 0.5f);
      float count = 0.0f;
      bool flag = false;
    do{
          glfwGetCursorPos(window, &xpos, &ypos);
         // glm::vec3 lightPos(xpos, ypos, 2.0f);

        glm::vec4 cursorPos((xpos/windowWidth) - 0.5f, ypos/windowHeight -0.5f, 1.0f, 1.0f);
        cursorPos = projection * view * cursorPos;
 //std::cout <<cursorPos.x << " " << cursorPos.y  << cursorPos.z << std::endl;

        model = rotate * model;
        showFPS();
        // glm::vec3 lightPos(count, count, 1.0f);
         if(count < 1.5f && flag == false) {
            count +=0.08f;

         }else if(count > -1.5f) {
                flag = true;
                count-=0.08f;
         }else flag = false;

        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

        GLint modelLoc = glGetUniformLocation(shader.Program, "model");
        GLint viewLoc = glGetUniformLocation(shader.Program, "view");
        GLint projLoc = glGetUniformLocation(shader.Program, "projection");
        GLint viewPosLoc = glGetUniformLocation(shader.Program, "viewPos");


        glUniformMatrix4fv(projLoc, 1, GL_FALSE, glm::value_ptr(projection));
        glUniformMatrix4fv(viewLoc, 1, GL_FALSE, glm::value_ptr(view));
        glUniformMatrix4fv(modelLoc, 1, GL_FALSE, glm::value_ptr(model));
        glUniform3f(viewPosLoc, cursorPos.x, cursorPos.y, 1.0f);

        GLint lightPosLoc = glGetUniformLocation(shader.Program, "lightPos");
        glUniform3f(lightPosLoc, lightPos.x, lightPos.y, lightPos.z);

        //triangle.Draw(shader);
         box.Draw(shader);

        glfwSwapBuffers(window);
        glfwPollEvents();


    } // Check if the ESC key was pressed or the window was closed
    while( glfwGetKey(window, GLFW_KEY_ESCAPE ) != GLFW_PRESS &&
           glfwWindowShouldClose(window) == 0 );

    glDisableVertexAttribArray(0);
   // glDeleteBuffers(1, &VBO);
   // glDeleteBuffers(1, &VAO);
  //  glDeleteBuffers(1, &EBO);

    glfwTerminate();

    return 0;
}

