#pragma glslify: when_gt = require('glsl-conditionals/when_gt')

float when_le(float x, float y) {
  return 1.0 - when_gt(x, y);
}

vec2 when_le(vec2 x, vec2 y) {
  return 1.0 - when_gt(x, y);
}

vec3 when_le(vec3 x, vec3 y) {
  return 1.0 - when_gt(x, y);
}

vec4 when_le(vec4 x, vec4 y) {
  return 1.0 - when_gt(x, y);
}

#pragma glslify: export(when_le)
