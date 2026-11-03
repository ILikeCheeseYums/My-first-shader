void mainImage(out vec4 fragColor, in vec2 fragCoord) {
    vec2 uv = fragCoord / iResolution.xy*2.0-1.0;
    float d = length(uv);
    fragColor = vec4(d,d,d, 1.0);
}