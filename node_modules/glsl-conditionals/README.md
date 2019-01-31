# glsl-conditionals [![experimental](http://badges.github.io/stability-badges/dist/experimental.svg)](http://github.com/badges/stability-badges)

[Daniel Holden's functions designed to avoid conditionals](http://theorangeduck.com/page/avoiding-shader-conditionals) in GLSL,
available as a module for [glslify](http://github.com/chrisdickinson/glslify).

## Usage

[![NPM](https://nodei.co/npm/glsl-conditionals.png)](https://nodei.co/npm/glsl-conditionals/)

``` glsl
// Comparisons
#pragma glslify: when_eq = require(glsl-conditionals/when_eq)
#pragma glslify: when_neq = require(glsl-conditionals/when_neq)

#pragma glslify: when_gt = require(glsl-conditionals/when_gt)
#pragma glslify: when_lt = require(glsl-conditionals/when_lt)

#pragma glslify: when_ge = require(glsl-conditionals/when_ge)
#pragma glslify: when_le = require(glsl-conditionals/when_le)

// Logical operators
#pragma glslify: when_and = require(glsl-conditionals/when_and)
#pragma glslify: when_or = require(glsl-conditionals/when_or)
#pragma glslify: when_xor = require(glsl-conditionals/when_xor)
#pragma glslify: when_not = require(glsl-conditionals/when_not)
```

``` glsl
attribute float x;

// ...

y += 5 * when_eq(x, 0)
```

## License

MIT
