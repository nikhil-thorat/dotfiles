#version 300 es

precision highp float;
in vec2 v_texcoord;
out vec4 fragColor;
uniform sampler2D tex;

const float SATURATION = 1.7;

void main() {
    vec4 pixColor = texture(tex, v_texcoord);
    vec3 color = pixColor.rgb;

    // Luminance-preserving saturation boost
    float luma = dot(color, vec3(0.2126, 0.7152, 0.0722));
    vec3 gray = vec3(luma);
    color = mix(gray, color, SATURATION);

    fragColor = vec4(clamp(color, 0.0, 1.0), pixColor.a);
}
