library(sf)
library(dplyr)
library(usethis)

# Fuente: INE Uruguay, Censo 2023
# https://www.gub.uy/instituto-nacional-estadistica/cartografia

uy_departamentos <- st_read(
  "data-raw/depto_23_pg.gpkg",
  quiet = TRUE
) |>
  filter(NOMDEPTO != "LIMITE CONTESTADO") |>
  select(NOMDEPTO, CDEPTO_ISO, DEPTO, geom) |>
  st_make_valid() |>
  st_simplify(preserveTopology = TRUE, dTolerance = 0.001)

usethis::use_data(uy_departamentos, overwrite = TRUE)

# Contorno de Uruguay - disuelto desde los departamentos
uy <- uy_departamentos |>
  summarise(geometry = st_union(geom)) |>
  st_make_valid()

usethis::use_data(uy, overwrite = TRUE)
