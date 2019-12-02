#' @title windRose
#'
#' @description WindRose, para visualizar la variabilidad de la velocidad y direccion del viento.
#'
#' @param period ("year" or "month") estadisticos calculados a partir del periodo
#'
#' @return NULL
#'
#' @examples
#' airviro_windrose("month")
#' @export
#' @importFrom openair windRose
#' 

airviro_windrose <- function(period) {
  data_air<<-data_air[!is.na(data_air[,1]), ]
  data_air[data_air <= 0] <<- 0
#function(type,pollutant)
#rosa de los vientos...
x11()
windRose(data_air, type= period,angle = 22.5, bias.corr = FALSE)

#####
}
