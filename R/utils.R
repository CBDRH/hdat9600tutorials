use_my_css <- function() {

  # get the locations of resource files located within the package
  # remember that package installation moves everything in inst/ up a level
  # in the directory hierarchy
  css <- system.file("tutorials/css/tutorials.css", package = "hdat9600tutorials")
  header <- system.file("tutorials/images/UNSW_2017_Big_Data_landscape.jpg", package = "hdat9600tutorials")

  # call the base html_document function
  learnr::tutorial(
             fig_width = 6.5,
             fig_height = 4,
             progressive = FALSE,
             allow_skip = TRUE,
             theme = NULL,
             css = css)
}
