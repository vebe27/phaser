#define SHADER_NAME PHASER_TEXTURE_TINT_VS

precision mediump float;

uniform mat4 uOrthoMatrix;

attribute vec2 inPosition;
attribute vec2 inTexCoord;
attribute vec4 inTint;

varying vec2 outTexCoord;
varying vec4 outTint;

void main () 
{
    gl_Position = uOrthoMatrix * vec4(inPosition, 1.0, 1.0);
    outTexCoord = inTexCoord;
    outTint = inTint;
}
