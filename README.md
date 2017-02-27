### About

Simple SASS Grid System

[![Build Status](https://img.shields.io/travis/AlfredoRamos/simple-grid-system.svg?style=flat-square&maxAge=3600)](https://travis-ci.org/AlfredoRamos/simple-grid-system) [![Latest Stable Version](https://img.shields.io/github/tag/AlfredoRamos/simple-grid-system.svg?style=flat-square&label=stable&maxAge=3600)](https://github.com/AlfredoRamos/simple-grid-system/releases) [![License](https://img.shields.io/github/license/AlfredoRamos/simple-grid-system.svg?style=flat-square)](https://raw.githubusercontent.com/AlfredoRamos/simple-grid-system/master/LICENSE)

Precompiled CSS files can be found at [`grids.css`](https://gist.github.com/AlfredoRamos/7373ba3506e10358bb84648af9a808b0#file-grids-css) and [`grids.min.css`](https://gist.github.com/AlfredoRamos/7373ba3506e10358bb84648af9a808b0#file-grids-min-css). A live demo is hosted at [Simple Grid System](https://alfredoramos.github.io/development/2017/02/02/simple-grid-system.html).

### Dependencies

- SASS processor [[docs](http://sass-lang.com/install)]

### Build

Create `build` directory:

```shell
mkdir build
```

Using `sass` Ruby gem:

```shell
sass -Ct expanded scss/grids.scss build/grids.css --sourcemap=none
```

```shell
sass -Ct compressed scss/grids.scss build/grids.min.css --sourcemap=none
```
