// Local Headers
#include "glitter.hpp"

// System Headers
#include <glad/glad.h>
#include <GLFW/glfw3.h>

// Standard Headers
#include <cstdio>
#include <cstdlib>
#include <iostream>

// Shaders
const GLchar* vertex_source = R"glsl(
	#version 400 core
	in vec3 position;

	void main()
	{
		gl_Position = vec4(position, 1.0f);
	}
)glsl";
const GLchar* fragment_source = R"glsl(
	#version 400 core
	uniform vec3 color;
	out vec4 out_color;

	void main()
	{
		out_color = vec4(color, 1.0f);
	}
)glsl";

#define check_gl_error() _check_gl_error(__FILE__,__LINE__)
void _check_gl_error(const char *file, int line)
{
	GLenum err(glGetError());

	while(err != GL_NO_ERROR)
	{
		std::string error;

		switch(err)
		{
		case GL_INVALID_OPERATION:
			error = "INVALID_OPERATION";
			break;
		case GL_INVALID_ENUM:
			error = "INVALID_ENUM";
			break;
		case GL_INVALID_VALUE:
			error = "INVALID_VALUE";
			break;
		case GL_OUT_OF_MEMORY:
			error = "OUT_OF_MEMORY";
			break;
		case GL_INVALID_FRAMEBUFFER_OPERATION:
			error = "INVALID_FRAMEBUFFER_OPERATION";
			break;
		default:
			error = "UKNOWN_ERROR";
			break;
		}

		std::cerr << "GL_" << error.c_str() << " - " << file << ":" << line << std::endl;
		err = glGetError();
	}
}

int main(int, char**) {

	// Load GLFW and Create a Window
	glfwInit();
	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 0);
	glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
	glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
	glfwWindowHint(GLFW_RESIZABLE, GL_FALSE);
	auto mWindow = glfwCreateWindow(mWidth, mHeight, "OpenGL", nullptr, nullptr);

	// Check for Valid Context
	if (mWindow == nullptr) {
		fprintf(stderr, "Failed to Create OpenGL Context");
		return EXIT_FAILURE;
	}

	// Create Context and Load OpenGL Functions
	glfwMakeContextCurrent(mWindow);
	gladLoadGL();
	fprintf(stderr, "OpenGL %s\n", glGetString(GL_VERSION));

	// Data specification
	float vertices[] = {
		0.5f,  0.5f, 0.0f,  // top right
		0.5f, -0.5f, 0.0f,  // bottom right
		-0.5f, -0.5f, 0.0f,  // bottom left
		-0.5f,  0.5f, 0.0f   // top left
	};
	unsigned int indices[] = {
			0, 1, 3, // first triangle
	        1, 2, 3 // second triangle
	};

	// Create vertex array object to store settings
	GLuint vao;
	glGenVertexArrays(1, &vao);
	glBindVertexArray(vao);

	// Set up vertex buffer object to store vertex data
	GLuint vbo;
	glGenBuffers(1, &vbo);
	glBindBuffer(GL_ARRAY_BUFFER, vbo);
	glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW); // copy data

	// Set up element buffer object to store indices
	GLuint ebo;
	glGenBuffers(1, &ebo);
	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, ebo);
	glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);

	// Create and compile vertex shader
	GLuint vertex_shader = glCreateShader(GL_VERTEX_SHADER);
	glShaderSource(vertex_shader, 1, &vertex_source, NULL);
	glCompileShader(vertex_shader);
	{ // Check that the shader compiled
		GLint status;
		glGetShaderiv(vertex_shader, GL_COMPILE_STATUS, &status);
		if(status != GL_TRUE)
		{
			char buffer[512];
			glGetShaderInfoLog(vertex_shader, 512, NULL, buffer);
			fprintf(stderr, "Vertex shader failed to compile \n%s", buffer);
			return 1;
		}
	}

	// Create and compile fragment shader
	GLuint fragment_shader = glCreateShader(GL_FRAGMENT_SHADER);
	glShaderSource(fragment_shader, 1, &fragment_source, NULL);
	glCompileShader(fragment_shader);
	{ // Check that the shader compiled
		GLint status;
		glGetShaderiv(fragment_shader, GL_COMPILE_STATUS, &status);
		if(status != GL_TRUE)
		{
			char buffer[512];
			glGetShaderInfoLog(fragment_shader, 512, NULL, buffer);
			fprintf(stderr, "Fragment shader failed to compile \n%s", buffer);
			return 1;
		}
	}

	// Create shader program and put it to use
	GLuint shader_program = glCreateProgram();
	glAttachShader(shader_program, vertex_shader);
	glAttachShader(shader_program, fragment_shader);
//	glBindFragDataLocation(shader_program, 0, "out_color"); // output index = out_color
	glLinkProgram(shader_program);
	{ // Check that the program linked
		GLint status;
		glGetProgramiv(shader_program, GL_LINK_STATUS, &status);
		if(status != GL_TRUE)
		{
			char buffer[512];
			glGetProgramInfoLog(shader_program, 512, NULL, buffer);
			fprintf(stderr, "Shader program failed to link \n%s", buffer);
			return 1;
		}
	}
	glUseProgram(shader_program);

	// Clean up shader objects
	glDeleteShader(vertex_shader);
	glDeleteShader(fragment_shader);

	// Set up and enable attribute array
	GLint position_attrib = glGetAttribLocation(shader_program, "position");
	glVertexAttribPointer(position_attrib, 3, GL_FLOAT, GL_FALSE, 0, 0);
	glEnableVertexAttribArray(position_attrib);
	GLint color_uniform = glGetUniformLocation(shader_program, "color");
	glUniform3f(color_uniform, 0.1f, 0.8f, 0.8f);

	// Rendering Loop
	while (glfwWindowShouldClose(mWindow) == false)
	{
		if (glfwGetKey(mWindow, GLFW_KEY_ESCAPE) == GLFW_PRESS)
		{
			glfwSetWindowShouldClose(mWindow, true);
		}

		// Background Fill Color
		glClearColor(0.25f, 0.25f, 0.25f, 1.0f);
		glClear(GL_COLOR_BUFFER_BIT);

		// Draw geometry
		glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, ebo);
		glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, 0);

		// Flip Buffers and Draw
		glfwSwapBuffers(mWindow);
		glfwPollEvents();
	}
	glfwTerminate();
	return EXIT_SUCCESS;
}
