# Supported manufacturers, models and sensors

A look-up table with all manufacturers, models and sensors supported by
archivaltag.

## Usage

``` r
supported_tags
```

## Format

An object of class `tbl_df` (inherits from `tbl`, `data.frame`) with 3
rows and 3 columns.

## Examples

``` r
if (FALSE) { # \dontrun{
# supported_tags.Rda was created with the code below.
supported_tags <- tibble::tibble(
  manufacturer = c(
    "cefas technology",
    "cefas technology",
    "star-oddi"
  ),
  model = c(
    "G5dst",
    "G5pdst",
    "micro-td"
  ),
  sensors = list(
    list("temperature", "pressure", "acceleration"),
    list("temperature", "pressure", "acceleration"),
    list("temperature", "pressure", "acceleration")
  )
)
save(supported_tags, file = "./data/supported_tags.rda")
} # }
```
