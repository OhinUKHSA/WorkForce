## ---------------------------
##
## Script name: Load_Packages
##
## Purpose of script: To download all necessary packages needed to run Work force report
##
## Author: Owen Williams
##
## Date Created: 16/09/2025
##
##
## ---------------------------
##
## Notes: 
##
## Run this script once to install all necessary packages. It may take a while 
## the first time.
##
##
## To run this code press 'Control' + 'A' then 'Enter'
##   
##
## ---------------------------


options(repos = c(CRAN = "https://cloud.r-project.org"))

packages <- c("tidyverse", "plotly", "kableExtra", "tsibble")

for (p in packages) {
  if (!requireNamespace(p, quietly = TRUE)) {
    install.packages(p)
  }
}

message("All required packages are installed. You can now run the report.")