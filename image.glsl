void mainImage(out vec4 fragColor, in vec2 fragCoord) {
    vec2 uv = (fragCoord * 2.0 - iResolution.xy) / iResolution.y;
    float d = length(uv);
    vec3 col = vec3(1.0,0.0,0.0);
    d=sin(d*8. + iTime)/8.;
    d=abs(d);
    d=0.01/d;
    d*=col;
    fragColor = vec4(d,d,d, 1.0);
}