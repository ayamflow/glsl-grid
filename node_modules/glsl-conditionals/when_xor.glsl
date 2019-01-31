float when_xor(float a, float b) {
  return (a + b) % 2.0;
}

vec2 when_xor(vec2 a, vec2 b) {
  return (a + b) % 2.0;
}

vec3 when_xor(vec3 a, vec3 b) {
  return (a + b) % 2.0;
}

vec4 when_xor(vec4 a, vec4 b) {
  return (a + b) % 2.0;
}

#pragma glslify: export(when_xor)return (a + b) % 2.0;
