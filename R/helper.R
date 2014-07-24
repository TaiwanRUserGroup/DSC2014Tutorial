get_file <- function(path) {
  system.file(path, package = "DSC2014Tutorial")
}

get_uri <- function(path) {
  sprintf("file://%s", get_file(path))
}

#'@export
#'@importFrom utils browseURL
slides <- function(talk_id) {
  slides_url <- switch(as.character(talk_id), 
    Basic = get_uri("Basic/slides/index.html"),
    ETL = get_uri("ETL/slides/index.html"),
    DataAnalysis = get_uri("DataAnalysis/slides/index.html"),
    Visualization2 = get_uri("Visualization/slide2/lecture_ggplot2/index.html")
  )
  utils::browseURL(slides_url)
}
