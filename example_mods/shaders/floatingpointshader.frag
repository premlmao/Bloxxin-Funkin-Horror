#pragma header
vec2 uv = openfl_TextureCoordv.xy;
vec2 fragCoord = openfl_TextureCoordv*openfl_TextureSize;
vec2 iResolution = openfl_TextureSize;
uniform float iTime;
uniform float intensification;
uniform float randomizationy;

#define iChannel0 bitmap
#define texture flixel_texture2D
#define fragColor gl_FragColor
#define mainImage main
uniform vec4 iMouse;

// https://www.shadertoy.com/view/cd2XRV

float rand(vec2 co)
{
    return fract(sin(dot(co.xy ,vec2(10,70))) * 35);
}

void mainImage()
{

    vec2 o_trpino = (fragCoord.xy - iResolution.xy*0.5)/ iResolution.y;
    vec2 o_trmono = (iMouse.xy - iResolution.xy*0.5)/ iResolution.y;
    vec2 o_trmono_nooffset = (iMouse.xy )/ iResolution.y;
    vec2 o_trpino_nooffset = (fragCoord.xy )/ iResolution.xy;
    if(iMouse.z == 0.){
        o_trmono = vec2(0.1, 0.1);
    }

    vec2 o_scale = vec2(rand(vec2(iTime * randomizationy, intensification))*o_trmono.x);
    vec2 o_fragCoord_scaled = ((fragCoord.xy)*o_scale);
    vec2 o_iResolution_scaled = (iResolution.xy * o_scale);

    vec2 o_fragCoord_scaled_floor = floor(o_fragCoord_scaled);
    vec2 o_iResolution_scaled_floor = floor(o_iResolution_scaled);
    vec2 o_fragCoord_scaled_fract = fract(o_fragCoord_scaled);
    vec2 o_iResolution_scaled_fract = fract(o_iResolution_scaled);
       

    
    vec2 o_trpino_scldfloor = (o_fragCoord_scaled_floor.xy - o_iResolution_scaled_floor.xy*0.5)/ o_iResolution_scaled_floor.y;


    float n_index = floor(o_fragCoord_scaled_floor.y * o_iResolution_scaled_floor.x + o_fragCoord_scaled_floor.x);
    float n_index_nor = n_index / (o_iResolution_scaled_floor.x * o_iResolution_scaled_floor.y);
    vec2 o_amp = vec2(0.4*o_trmono.y*2.);
    vec2 o_freq = vec2(
        o_fragCoord_scaled_floor.x+iTime*rand(vec2(iTime * randomizationy, intensification)), //+o_fragCoord_scaled_floor.y * intensification, 
        o_fragCoord_scaled_floor.x+iTime*rand(vec2(iTime * randomizationy, intensification))
    );
    o_trpino_nooffset += vec2(
        sin(o_freq.x),
        cos(o_freq.y) * intensification
    )*o_amp;
    vec4 o_col_texture = texture(iChannel0, o_trpino_nooffset);
    fragColor = o_col_texture;
}