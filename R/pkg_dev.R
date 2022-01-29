library(usethis)

## In separate new project
# Create a new package -------------------------------------------------
pkg_path <- file.path('C:/Users/marqu/OneDrive/Documents/GitHub', "holiday.dates")
usethis::proj_activate(pkg_path)
usethis::create_package(pkg_path)

## In side of the new package project
# Modify the description ----------------------------------------------
use_mit_license("My Name")


use_package("MASS", "Suggests")


# Set up other files -------------------------------------------------
usethis::use_readme_rmd()
usethis::use_readme_md()
use_news_md()

#use_test("my-test")

# Use git ------------------------------------------------------------
use_git()

# Setup Documentation
usethis::use_pkgdown()


