### About

Simple SASS Grid System

[![Build Status](https://img.shields.io/travis/AlfredoRamos/simple-grid-system.svg?style=flat-square)](https://travis-ci.org/AlfredoRamos/simple-grid-system) [![Latest Stable Version](https://img.shields.io/github/tag/AlfredoRamos/simple-grid-system.svg?style=flat-square&label=stable)](https://github.com/AlfredoRamos/simple-grid-system/releases) [![Code Quality](https://img.shields.io/codacy/grade/305ccf33491f4e2ba5405a0cff204b0f.svg?style=flat-square)](https://www.codacy.com/app/AlfredoRamos/simple-grid-system) [![License](https://img.shields.io/github/license/AlfredoRamos/simple-grid-system.svg?style=flat-square)](https://raw.githubusercontent.com/AlfredoRamos/simple-grid-system/master/LICENSE)

Precompiled CSS files (`grids.css` and `grids.min.css`) can be found in [this gist](https://gist.github.com/AlfredoRamos/7373ba3506e10358bb84648af9a808b0). A live demo is hosted at [Simple Grid System](https://alfredoramos.github.io/simple-grid-system).

### Dependencies

- Ruby >= 2.2.0
- Bundler [[info](https://bundler.io/)]

For a list of gem dependencies, see the [Gemfile](https://github.com/AlfredoRamos/simple-grid-system/blob/master/Gemfile).

### Build

First off run `bundler install` to install all required gems, then generate the CSS files using `rake` tasks:

**Normal**

```shell
rake build:css
```

**Minified**

```shell
rake build:minified
```

**Both**

```shell
rake build:all
```
