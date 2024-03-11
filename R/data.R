#' Supported manufacturers, models and sensors
#'
#' A look-up table with all manufacturers, models and sensors supported by
#' archivaltag.
#' @family supported tags
#' @examples
#' \dontrun{
#' # supported_tags.Rda was created with the code below.
#' supported_tags <- tibble::tibble(
#'   manufacturer = c(
#'     "cefas technology",
#'     "cefas technology",
#'     "star-oddi"
#'   ),
#'   model = c(
#'     "G5dst",
#'     "G5pdst",
#'     "micro-td"
#'   ),
#'   sensors = list(
#'     list("temperature", "pressure", "acceleration"),
#'     list("temperature", "pressure", "acceleration"),
#'     list("temperature", "pressure", "acceleration")
#'   )
#' )
#' save(supported_tags, file = "./data/supported_tags.rda")
#' }
"supported_tags"
