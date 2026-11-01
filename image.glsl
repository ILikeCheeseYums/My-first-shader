// Shadergator first shader practice
void mainImage(out vec4 fragColor, in vec2 fragCoord) {
    vec2 uv =fragCoord / iResolution.xy;
    fragColor = vec4(paint, 1.0);
}
