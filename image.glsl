// Shadergator first shader practice
void mainImage(out vec4 fragColor, in vec2 fragCoord) {
    vec2 point = (uv - 0.5) * vec2(iResolution.x /
iResolution.y, 1.0);
float circle = 1.0 - smoothstep (0.24, 0.25, length(point));
fragcolor = vec4 (paint * circle, 1.0);
}
