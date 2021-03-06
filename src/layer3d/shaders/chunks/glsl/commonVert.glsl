attribute vec3 a_Position;
attribute vec3 a_Normal;
#ifdef USE_TANGENT
	attribute vec4 a_Tangent;
#endif

#include <transpose>
#include <inverse>

uniform mat4 u_Projection;
uniform mat4 u_View;
uniform mat4 u_Model;

uniform vec3 u_CameraPosition;

#ifdef USE_MORPHTARGETS

    attribute vec3 morphTarget0;
    attribute vec3 morphTarget1;
    attribute vec3 morphTarget2;
    attribute vec3 morphTarget3;

    #ifdef USE_MORPHNORMALS

    	attribute vec3 morphNormal0;
    	attribute vec3 morphNormal1;
    	attribute vec3 morphNormal2;
    	attribute vec3 morphNormal3;

    #else

    	attribute vec3 morphTarget4;
    	attribute vec3 morphTarget5;
    	attribute vec3 morphTarget6;
    	attribute vec3 morphTarget7;

    #endif

#endif