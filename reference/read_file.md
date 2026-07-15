# Read archival tag sensor data files.

Read archival tag sensor data files.

## Usage

``` r
read_file(file, manufacturer, model, sensors)
```

## Arguments

- file:

  A character with the path to an archival tag data file.

- manufacturer:

  A character vector of length 1 with the manufacturer of the tag.

- model:

  A character vector of length 1 with the model of the tag.

- sensors:

  A character vector with the sensors embedded in the tags, e.g.
  "temperature", "pression". A tag can contain multiple sensors.

## Value

A list with three elements:

- `track_tag_id`: a character with the ID of the tag

- `daylog`: a tibble data.frame with daylog information

- `sensor`: a tibble data.frame with sensor data

## Examples

``` r
# Read data collected by a CEFAS G5DST tag with pressure and temperature
# sensors
cefas_g5dst_press_temp <- system.file(
  "extdata",
  "cefas_g5dst_pressure_temperature.csv",
  package = "archivaltag"
)
archivaltag::read_file(
  file = cefas_g5dst_press_temp,
  manufacturer = "cefas technology",
  model = "G5dst",
  sensors = c("pressure", "temperature")
)
```
