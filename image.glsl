void mainImage(out vec4 fragColor, in vec2 fragCoord) {
    vec2 uv = fragCoord / iResolution.xy;
    vec2 point = (uv - 0.5) * vec2(iResolution.x / iResolution.y, 1.0);
    vec3 paint = 0.5 + 0.5 * cos(iTime + uv.x + vec3(0.0, 2.0, 4.0));
    float circle = 1.0 - smoothstep(0.24, 0.25, length(point));
    fragColor = vec4(paint * circle, 1.0);
}