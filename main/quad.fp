varying highp vec4 var_position;
varying mediump vec3 var_normal;
varying mediump vec2 var_texcoord0;
varying mediump vec4 var_light;

uniform lowp sampler2D tex0;
uniform lowp sampler2D tex1;
uniform lowp vec4 tint;

void main()
{
    vec4 color_world = texture2D(tex0, var_texcoord0.xy);
    vec4 color_light = texture2D(tex1, var_texcoord0.xy);
    
    gl_FragColor = color_world * color_light;
}

