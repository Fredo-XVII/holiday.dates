library(usethis)
library(purrr)
## In separate new project
# Create a new package -------------------------------------------------
pkg_path <- file.path('C:/Users/marqu/OneDrive/Documents/GitHub', "holiday.dates")
usethis::proj_activate(pkg_path)
usethis::create_package(pkg_path)

## In side of the new package project
# Modify the description ----------------------------------------------
usethis::use_mit_license("Alfredo Marquez")

## Add dependency packages
pkgs_import <- c("timeDate","dplyr","tidyr","tibble","lubridate","rlang")

purrr::map(pkgs_import, usethis::use_package, type = "Import")

pkgs_suggest <- c("lubridate","rlang")
purrr::map(pkgs_import, usethis::use_package, type = "Suggests")

usethis::use_pipe()

# Set up other files -------------------------------------------------
usethis::use_readme_rmd()
usethis::use_readme_md()
use_news_md()

#use_test("my-test")

# Use git ------------------------------------------------------------
use_git()

# Add new functions --------------------------------------------------
usethis::use_r('holiday_data')
usethis::use_r('add_holidays')


# Setup Documentation ------------------------------------------------
usethis::use_pkgdown()
pkgdown::build_site()

# Git Rstudio Settings

#C:/Users/marqu/AppData/Local/GitHubDesktop/app-1.2.3/resources/app/git/mingw64/bin/git.exe
#C:\Program Files\Git\mingw64\bin
