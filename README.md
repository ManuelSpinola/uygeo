# uygeo <img src="man/figures/logo.png" align="right" height="139" alt="" />

<!-- badges: start -->
[![R-CMD-check](https://github.com/ManuelSpinola/uygeo/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/ManuelSpinola/uygeo/actions/workflows/R-CMD-check.yaml)
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

`uygeo` provides ready-to-use geospatial data for Uruguay as [`sf`](https://r-spatial.github.io/sf/) objects. The package is inspired by [`crgeo`](https://github.com/ManuelSpinola/crgeo) and follows the same design philosophy: minimal dependencies, tidy data, and compatibility with the tidyverse ecosystem.

## Installation

You can install the development version of `uygeo` from GitHub:

```r
# install.packages("pak")
pak::pak("ManuelSpinola/uygeo")
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
  geom_sf(fill = "#009FCC", color = "white") +
  theme_minimal() +
  labs(title = "Departamentos de Uruguay")
```

### Label each departamento

```r
library(sf)

ggplot(uy_departamentos) +
  geom_sf(fill = "#E8F4F8", color = "#009FCC") +
  geom_sf_text(aes(label = NOMDEPTO), size = 2.5, color = "gray30") +
  theme_void() +
  labs(
    title = "Uruguay",
    subtitle = "División departamental",
    caption = "Fuente: INE Uruguay, Censo 2023"
  )
```

## Data sources

- [Instituto Nacional de Estadística (INE)](https://www.gub.uy/instituto-nacional-estadistica/cartografia) — límites departamentales, Censo 2023. Licencia de Datos Abiertos Uruguay.

## Related packages

- [`crgeo`](https://github.com/ManuelSpinola/crgeo) — geospatial data for Costa Rica (same author)
- [`sf`](https://r-spatial.github.io/sf/) — simple features for R

## Citation

```r
citation("uygeo")
```

```
To cite uygeo in publications use:

  Manuel Spinola (2025). uygeo: Geospatial Data for Uruguay. R package
  version 0.1.0. https://github.com/ManuelSpinola/uygeo

A BibTeX entry for LaTeX users is:

  @Manual{,
    title  = {uygeo: Geospatial Data for Uruguay},
    author = {Manuel Spinola},
    year   = {2025},
    note   = {R package version 0.1.0},
    url    = {https://github.com/ManuelSpinola/uygeo},
  }
```

## License

MIT © Manuel Spinola
