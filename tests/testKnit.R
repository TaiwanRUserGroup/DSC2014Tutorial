library(knitr)
slides <- c("Basic/slides/index.Rmd", "ETL/slides/index.Rmd", "Visualization/slide1/index.Rmd", "Visualization//slide2/lecture_ggplot2/index.Rmd", "Visualization//slide3/index.Rmd")
slides <- system.file(slides, package="DSC2014Tutorial")
stopifnot(slides != "")
out.file <- list()
for(slide in slides) {
  knit(slide, out.file[[slide]] <- tempfile(fileext = ".md"), encoding="UTF-8")
}
