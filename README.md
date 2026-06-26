# uygeo <img src="man/figures/logo.png" align="right" height="139" alt="" />

<!-- badges: start -->
[![R-CMD-check](https://github.com/tuusuario/uygeo/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/tuusuario/uygeo/actions/workflows/R-CMD-check.yaml)
[![CRAN status](https://www.r-pkg.org/badges/version/uygeo)](https://CRAN.R-project.org/package=uygeo)
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

`uygeo` provides ready-to-use geospatial data for Uruguay as [`sf`](https://r-spatial.github.io/sf/) objects. The package is inspired by [`crgeo`](https://github.com/tuusuario/crgeo) and follows the same design philosophy: minimal dependencies, tidy data, and compatibility with the tidyverse ecosystem.

## Installation

You can install the development version of `uygeo` from GitHub:

```r
# install.packages("pak")
pak::pak("tuusuario/uygeo")
```

## Available datasets

| Dataset | Description | Rows |
|---|---|---|
| `uy` | Country boundary of Uruguay | 1 |
| `uy_departamentos` | Administrative divisions (19 departamentos) | 19 |

## Usage

### Country boundary

```r
library(uygeo)
library(ggplot2)

ggplot(uy) +
  geom_sf(fill = "#009FCC", color = "white") +
  theme_minimal() +
  labs(title = "Uruguay")
```

### Departamentos

```r
ggplot(uy_departamentos) +
  geom_sf(aes(fill = name), color = "white", show.legend = FALSE) +
  theme_minimal() +
  labs(title = "Departamentos de Uruguay")
```

### Label each departamento

```r
library(sf)

ggplot(uy_departamentos) +
  geom_sf(fill = "#E8F4F8", color = "#009FCC") +
  geom_sf_text(aes(label = name), size = 2.5, color = "gray30") +
  theme_void() +
  labs(
    title = "Uruguay",
    subtitle = "División departamental",
    caption = "Fuente: Natural Earth"
  )
```

## Data sources

- [Natural Earth](https://www.naturalearthdata.com) — country and administrative boundaries (public domain)

## Related packages

- [`crgeo`](https://github.com/tuusuario/crgeo) — geospatial data for Costa Rica (same author)
- [`sf`](https://r-spatial.github.io/sf/) — simple features for R
- [`rnaturalearth`](https://docs.ropensci.org/rnaturalearth/) — Natural Earth data in R

## Citation

```r
citation("uygeo")
```

```
To cite uygeo in publications use:

  Tu Nombre (2025). uygeo: Geospatial Data for Uruguay. R package
  version 0.1.0. https://github.com/tuusuario/uygeo

A BibTeX entry for LaTeX users is:

  @Manual{,
    title  = {uygeo: Geospatial Data for Uruguay},
    author = {Tu Nombre},
    year   = {2025},
    note   = {R package version 0.1.0},
    url    = {https://github.com/tuusuario/uygeo},
  }
```

## License

MIT © Tu Nombre
