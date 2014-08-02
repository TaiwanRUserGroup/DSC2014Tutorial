library(DSC2014Tutorial)
stopifnot(
  ETL_file("cl_info_other.csv") == switch(Sys.info()["sysname"],
    "Linux" = system.file("ETL/cl_info_other_unix.csv", package = "DSC2014Tutorial"),
    "Darwin" = system.file("ETL/cl_info_other_unix.csv", package = "DSC2014Tutorial"),
    "Windows" = system.file("ETL/cl_info_other_windows.csv", package = "DSC2014Tutorial"),
    stop("TODO: include OS to test")
  ))