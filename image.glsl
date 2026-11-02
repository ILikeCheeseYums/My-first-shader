void mainImage(out vec4 fragColor, in vec2 fragCoord) {
    // Normalized pixel coordinates
vec2 uv = fragCoord / iResolution.xy;

vec2 center = vec2(0.5+0.2*sin(iTime))

// 1. Center and correct aspect ratio
vec2 point = (uv - 0.5) * vec2(iResolution.x / iResolution.y, 1.0);

// 2. Create the anti-aliased circle mask
float circle = 1.0 - smoothstep(0.24, 0.25, length(point));

vec3 paint = vec3(0.5,0.5,0.5);

// 3. Shape your paint with the circle
fragColor = vec4(paint * circle, 1.0);
}