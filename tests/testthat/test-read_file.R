cefas_g5dst_press_temp <- system.file("extdata",
                                      "cefas_g5dst_pressure_temperature.csv",
                                      package = "archivaltag"
)

test_that("manufacturer is not a character", {
  expect_error(read_file(file = cefas_g5dst_press_temp,
                         manufacturer = c(1)),
               regexp = "`manufacturer` must be a character.",
               fixed = TRUE)
})

test_that("manufacturer is a character of length 1", {
  expect_error(read_file(file = cefas_g5dst_press_temp,
                         manufacturer = c("a", "b")),
               regexp = "`manufacturer` must be of length 1.",
               fixed = TRUE)
})

test_that("model is not a character", {
  expect_error(read_file(file = cefas_g5dst_press_temp,
                         manufacturer = "r", model = 1),
               regexp = "`model` must be a character.",
               fixed = TRUE)
})

test_that("model is a character of length 1", {
  expect_error(read_file(file = cefas_g5dst_press_temp,
                         manufacturer = "r", model = c("a", "b")),
               regexp = "`model` must be of length 1.",
               fixed = TRUE)
})

test_that("sensor is not a character", {
  expect_error(read_file(file = cefas_g5dst_press_temp,
                         manufacturer = "r", model = "r", sensors = 1),
               regexp = "`sensors` must be a character vector.",
               fixed = TRUE)
})
