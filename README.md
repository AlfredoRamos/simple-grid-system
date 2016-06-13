### Info

Simple SASS Grid System

Precompiled CSS files can be found at [grids.css](https://gist.githubusercontent.com/AlfredoRamos/7373ba3506e10358bb84648af9a808b0/raw/6bf6925f1c06b150fed79e0e87211c115987a153/grids.css) and [grids.min.css](https://gist.githubusercontent.com/AlfredoRamos/7373ba3506e10358bb84648af9a808b0/raw/6bf6925f1c06b150fed79e0e87211c115987a153/grids.min.css)

A live demo is hosted at [simple-grid-system](https://alfredoramos.github.io/simple-grid-system/)

### Dependencies

- SASS processor [[docs](http://sass-lang.com/install)]

### Build

Using `sass` Ruby gem:

```shell
sass -Ct expanded grids.scss grids.css --sourcemap=none
```

```shell
sass -Ct compressed grids.scss grids.min.css --sourcemap=none
```
