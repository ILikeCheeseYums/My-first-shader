vec3 palatte(float t,vec3 a,vec3 b,vec3 c,vec3 d){
    return a + b*cos(6.28318*(c*t*d));
}

void mainImage(out vec4 fragColor, in vec2 fragCoord) {
    vec2 uv = (fragCoord * 2.0 - iResolution.xy) / iResolution.y;
    float d = length(uv);
    vec3 col = vec3(1.0,2.0,3.0);
    d=sin(d*8. + iTime)/8.;
    d=0.01/abs(d);
    col*=d;
    fragColor = vec4(col, 1.0);
}