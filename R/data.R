#' Contorno de Uruguay
#'
#' Polígono del territorio nacional de la República Oriental del Uruguay,
#' obtenido disolviendo los límites departamentales oficiales del Censo 2023.
#'
#' @format Un objeto `sf` con 1 fila y 1 columna:
#' \describe{
#'   \item{geometry}{Geometría del polígono (MULTIPOLYGON), CRS: WGS 84 (EPSG 4326)}
#' }
#' @note Los datos tienen topología simplificada y se consideran referenciales.
#'   Para uso geodésico oficial consultar el INE Uruguay.
#' @source Instituto Nacional de Estadística (INE), Censo 2023.
#'   \url{https://www.gub.uy/instituto-nacional-estadistica/cartografia}
"uy"


#' Departamentos de Uruguay
#'
#' Límites de los 19 departamentos de la República Oriental del Uruguay
#' según el Censo 2023 del Instituto Nacional de Estadística (INE).
#'
#' @format Un objeto `sf` con 19 filas y 4 columnas:
#' \describe{
#'   \item{NOMDEPTO}{Nombre del departamento en mayúsculas}
#'   \item{CDEPTO_ISO}{Código ISO del departamento}
#'   \item{DEPTO}{Código numérico del departamento}
#'   \item{geom}{Geometría del polígono (MULTIPOLYGON), CRS: WGS 84 (EPSG 4326)}
#' }
#' @note Los datos tienen topología simplificada y se consideran referenciales.
#'   Para uso geodésico oficial consultar el INE Uruguay.
#' @source Instituto Nacional de Estadística (INE), Censo 2023.
#'   \url{https://www.gub.uy/instituto-nacional-estadistica/cartografia}
"uy_departamentos"
