#pragma glslify: when_ge = require(glsl-conditionals/when_ge)
#pragma glslify: when_gt = require(glsl-conditionals/when_gt)

float grid(vec3 pos, vec3 axis, float size) {
    float width = 1.0;

    // Grid size
    vec3 tile = pos / size;

    // Grid centered gradient
    vec3 level = abs(fract(tile) - 0.5);

    // Derivative (crisp line)
    vec3 deri = fwidth(tile);

    vec3 grid3D = clamp((level - deri * (width - 1.0)) / deri, 0.0, 1.0);

    // Shorter syntax but pow(0.0) fails on some GPUs
    // float lines = float(length(axis) > 0.0) * pow(grid3D.x, axis.x) * pow(grid3D.y, axis.y) * pow(grid3D.z, axis.z);

    float lines = float(length(axis) > 0.0)
        * (when_gt(axis.x, 0.0) * grid3D.x + when_le(axis.x, 0.0))
        * (when_gt(axis.y, 0.0) * grid3D.y + when_le(axis.y, 0.0))
        * (when_gt(axis.z, 0.0) * grid3D.z + when_le(axis.z, 0.0));
    return 1.0 - lines;
}

#pragma glslify: export(grid);