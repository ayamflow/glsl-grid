# glsl-grid

[![stable](http://badges.github.io/stability-badges/dist/stable.svg)](http://github.com/badges/stability-badges)

Draws an antialiased grid along the X/Y/Z direction of a mesh.
For use with glslify.

![glsl-grid](https://i.imgur.com/YxN1dP0.jpg)

### Installation :package:

```bash
npm i glsl-grid -S
```

### Usage :book:

#### grid(vec3 pos, vec3 axis, float size)
- vec3 pos
The position in world space.
- vec3 axis
The axis to draw a grid for. Set to 1.0 to enable, 0.0 to disable. i.e. vec3(0.0, 0.0, 1.0) will draw only along the z axis.
- float size
Space between grid tiles.

### Example :floppy_disk:

```glsl
#pragma glslify: grid = require(glsl-grid)
varying vec3 vPos;

void main() {
    float lines = grid(vPos, vec3(0.0, 0.0, 1.0), 2.0);
    gl_FragColor = vec4(vec3(lines), 1.0);
}
```

[Demo](https://ayamflow.github.io/glsl-grid/demo)

### License :pencil:

MIT. See [LICENSE](http://github.com/ayamflow/glsl-grid/blob/master/LICENSE) for details.