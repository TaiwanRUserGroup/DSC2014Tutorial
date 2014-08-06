if (Sys.info()['sysname'] == "Windows") Sys.setlocale(locale="Chinese (Traditional)_Taiwan.950")
slides <- c("Basic/slides/index.Rmd", "ETL/slides/index.Rmd", "Visualization/slide1/index.Rmd", "Visualization//slide2/lecture_ggplot2/index.Rmd", "Visualization/slide3/index.Rmd")
slides <- system.file(slides, package="DSC2014Tutorial")
stopifnot(slides != "")
out.file <- list()
for(slide in slides) {
  print(slide)
  if (Sys.info()['sysname'] == "Windows") {
    src <- readLines(file(slide, encoding="UTF-8"))
    src <- iconv(src, from = "UTF-8", to = "BIG5")
    write(src, dst <- sprintf("%s/index.Rmd", tempdir()))
    knitr::knit(dst, out.file[[slide]] <- tempfile(fileext = ".md"))
  } else {
    knitr::knit(slide, out.file[[slide]] <- tempfile(fileext = ".md"), encoding="UTF-8")
  }
  warnings()
}
