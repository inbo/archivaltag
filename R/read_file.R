#' Read archival tag sensor data files.
#'
#' @param file A character with the path to an archival tag data file.
#' @param manufacturer A character vector of length 1 with the manufacturer of
#'   the tag.
#' @param model A character vector of length 1 with the model of the tag.
#' @param sensors A character vector with the sensors embedded in the tags, e.g.
#'   "temperature", "pression". A tag can contain multiple sensors.
#'
#' @return A list with three elements:
#' - `track_tag_id`: a character with the ID of the tag
#' - `daylog`: a tibble data.frame with daylog information
#' - `sensor`: a tibble data.frame with sensor data
#'
#' @export
#'
#' @examples
#' # Read data collected by a CEFAS G5DST tag with pressure and temperature
#' # sensors
#' cefas_g5dst_press_temp <- system.file(
#'   "extdata", "cefas_g5dst_pressure_temperature.csv",
#'   package = "archivaltag"
#' )
#' read_file(
#'   file = cefas_g5dst_press_temp,
#'   manufacturer = "cefas technology",
#'   model = "G5dst",
#'   sensors = c("pressure", "temperature")
#' )
read_file <- function(file, manufacturer, model, sensors) {

  #' Check file (class and length)
  if (!is.character(file)) {
    cli::cli_abort(
      "{.var file} must be a character.",
      "x" = "You've supplied a {.cls {class(file)}} vector."
    )
  }
  if (length(file) != 1) {
    cli::cli_abort(
      "{.var file} must be of length 1.",
      "x" = "You've supplied {len} element{?s}."
    )
  }

  #' Check manufacturer (class and length)
  if (!is.character(manufacturer)) {
    cli::cli_abort(
      "{.var manufacturer} must be a character.",
      "x" = "You've supplied a {.cls {class(manufacturer)}} vector."
    )
  }
  if (length(manufacturer) != 1) {
    cli::cli_abort(
      "{.var manufacturer} must be of length 1.",
      "x" = "You've supplied {len} element{?s}."
    )
  }

  #' Check model (class and length)
  if (!is.character(model)) {
    cli::cli_abort(
      "{.var model} must be a character.",
      "x" = "You've supplied a {.cls {class(model)}} vector."
    )
  }
  if (length(model) != 1) {
    cli::cli_abort(
      "{.var model} must be of length 1.",
      "x" = "You've supplied {len} element{?s}."
    )
  }

  #' Check sensors (class)
  if (!is.character(sensors)) {
    cli::cli_abort(
      "{.var sensors} must be a character vector.",
      "x" = "You've supplied a {.cls {class(sensors)}} vector."
    )
  }
}
