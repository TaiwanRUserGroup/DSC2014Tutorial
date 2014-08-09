#'@export
ETL_file <- function(fname) {
  get_file(sprintf("ETL/%s", fname))
}

#'@export
DA_file <- function(fname) {
  get_file(sprintf("DataAnalysis/%s", fname))
}

get_os_suffix <- function() {
  switch(Sys.info()["sysname"], 
         "Linux" = "unix",
         "Darwin" = "unix",
         "Windows" = "windows",
         stop("Not supported system")
  )
}

#'@importFrom tools file_ext
get_file <- function(path, recursive = TRUE) {
  origin.output <- system.file(path, package = "DSC2014Tutorial")
  if (origin.output == "" & recursive) {             
    origin.output <- get_file(sprintf("%s.%s", 
            paste(substring(path, 1, nchar(path) - nchar(ext <- file_ext(path)) - 1), get_os_suffix(), sep="_"),
            ext), FALSE)
  }
  origin.output
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
    Visualization2 = get_uri("Visualization/slide2/lecture_ggplot2/index.html"),
    Visualization3 = get_uri("Visualization/slide3/index.html")
  )
  utils::browseURL(slides_url)
}
