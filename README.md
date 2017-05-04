### About

Simple SASS Grid System

[![Build Status](https://img.shields.io/travis/AlfredoRamos/simple-grid-system.svg?style=flat-square&maxAge=3600)](https://travis-ci.org/AlfredoRamos/simple-grid-system) [![Latest Stable Version](https://img.shields.io/github/tag/AlfredoRamos/simple-grid-system.svg?style=flat-square&label=stable&maxAge=3600)](https://github.com/AlfredoRamos/simple-grid-system/releases) [![License](https://img.shields.io/github/license/AlfredoRamos/simple-grid-system.svg?style=flat-square)](https://raw.githubusercontent.com/AlfredoRamos/simple-grid-system/master/LICENSE)

Precompiled CSS files (`grids.css` and `grids.min.css`) can be found in [this gist](https://gist.github.com/AlfredoRamos/7373ba3506e10358bb84648af9a808b0). A live demo is hosted at [Simple Grid System](https://alfredoramos.github.io/simple-grid-system).

### Dependencies

- SASS processor [[docs](http://sass-lang.com/install)]

### Build

Create `build` directory:

```shell
mkdir build
```

Using `sass` Ruby gem:

```shell
sass -Ct expanded scss/main.scss build/grids.css --sourcemap=none
```

```shell
sass -Ct compressed scss/main.scss build/grids.min.css --sourcemap=none
```
