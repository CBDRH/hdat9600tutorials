# Functions for HDAT9600 Statistical Modelling II

# The blocks below can be used to map chapters to tutorials
# e.g. The chapter2() function is mapped to the tutorial "lm1"
# If mapping a chapter to a new tutorial make sure to update all the information for
# that chapter in the relevant block below


#' Chapter 2. Linear Models 1
#'
#' Launch the tutorial for chapter 1
#'
#' @export
run <- function(tute) {

  # locate all the existing tutorials
  validTutes <- list.files(system.file("tutorials", package = "hdat9600tutorials"))

  validExamplesMsg <-
    paste0(
      "Available tutorials are: '",
      paste(validTutes, collapse = "', '"),
      "'")

  # if an invalid example is given, throw an error
  if (missing(tute) || !nzchar(tute) || !tute %in% validTutes) {
    stop(
      'Please specify a valid app as an argument.\n',
      validExamplesMsg,
      call. = FALSE)
  }

  learnr::run_tutorial(tute, package = "hdat9600tutorials")
}
