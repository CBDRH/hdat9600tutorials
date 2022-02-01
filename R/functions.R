# Functions for HDAT9600 Statistical Modelling II

#' Launch a tutorial
#'
#' @export
#' @examples
#' run('lm1')
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


#' Show an index of available tutorials
#'
#' @return
#' @export
#'
#' @examples
#' index()
index <- function(){

  matrices <- paste("matrices", "An introduction to matrix algebra", sep=":\t")
  lm1 <- paste("lm1", "Linear models 1: Introduction", sep=":\t\t")
  lm2 <- paste("lm2", "Linear models 2: Model predictions, diagnostics and assumption checking", sep=":\t\t")
  lm3 <- paste("lm3", "Linear models 3: Handling categorical predictors and variable transformations", sep=":\t\t")
  glm1 <- paste("glm1", "Generalised inear models 1: Models for binary outcomes", sep=":\t\t")
  glm2 <- paste("glm2", "Generalised inear models 2: Model selection, goodness of fit and estiamtion problems in logistic models", sep=":\t\t")
  glm3 <- paste("glm3", "Generalised inear models 3: Models for binomial outcomes and count data", sep=":\t\t")
  sa1 <- paste("sa1", "Survival analysis 1: non-parametric methods", sep=":\t\t")
  sa2 <- paste("sa2", "Survival analysis 2: semi-parametric and parametric methods", sep=":\t\t")
  review <- paste("review", "Course review and best practice tips: Choosing a model, model building and presenting results", sep=":\t\t")

  msg <- paste("Available tutorials in the HDAT9600 tutorials package:", matrices, lm1, lm2, lm3, glm1, glm2, glm3, sa1, sa2, review ,sep = "\n")

  # list the available tutorials
  cat(msg)

}
