\name{getfp}
\alias{getfp}
\title{Get file path from a specific course folder}
\usage{
  getfp(fname, course) \cr
  Basic_file(fname) \cr
  ETL_file(fname) \cr
  DA_file(fname) \cr
  Vis_file(fname)
}
\arguments{
  \item{fname}{a character of import file name.}
  \item{course}{a character of course name. e.g.: "Basic", "ETL", "DataAnalysis", or "Visualization"}
}
\value{
  a path to the file.
}
\description{
  \code{getfp} Get file path from a specific course folder.
}
\examples{


# Example for ETL course
file_path <- ETL_file("cl_info_other.csv")
Cl_info <- read.csv(file_path, stringsAsFactor=FALSE)
head(Cl_info)

# Example for Data Analysis course
file_path <- DA_file("estate.rds")
# file_path <- getfp("estate.rds", "DataAnalysis")
dat <- readRDS(file_path)
head(dat)
}

