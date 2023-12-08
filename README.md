
<!-- README.md is generated from README.Rmd. Please edit that file -->

# holiday.dates

<!-- badges: start -->

[![AppVeyor build
status](https://ci.appveyor.com/api/projects/status/github/Fredo-XVII/holiday.dates?branch=master&svg=true)](https://ci.appveyor.com/project/Fredo-XVII/holiday.dates)
[![R-CMD-check](https://github.com/Fredo-XVII/holiday.dates/workflows/R-CMD-check/badge.svg)](https://github.com/Fredo-XVII/holiday.dates/actions)
[![Github All
Releases](https://img.shields.io/github/downloads/Fredo-XVII/holiday.dates/total.svg)]()
<!-- badges: end -->

The goal of holiday.dates is to create a data frame with holiday dates
flagged in a dataframe. The user has options for the output data frame
to be either the days or weeks between 2 days. A column of dates can
also be passed to the function, but it will only use the first and last
dates to build the holiday data frame.

[Git Pages Site](https://fredo-xvii.github.io/holiday.dates/)

## Installation

You can install the development version of holiday.dates like so:

``` r
library(remotes)
remotes::install_github("Fredo-XVII/holiday.dates")
```

## Examples

Below you will an example for holidays associated with days. Notice that
in this output you get the calendar date as well as the week begin date
and the week end date.

``` r

library(holiday.dates)

days_df <- tibble::tibble(weeks = seq.Date(as.Date('2015-01-01'), as.Date('2025-01-01'), by = 'day'))

holiday_data(df = days_df, out_df = "days") %>% head(10)
#> Joining with `by = join_by(greg_d, day_n, wk_beg_d, wk_end_d)`
#> Adding missing grouping variables: `wk_end_d`
#> Joining with `by = join_by(wk_beg_d, wk_end_d)`
#> # A tibble: 10 × 6
#>    greg_d     day_n wk_beg_d   wk_end_d   holiday_names holiday_flag
#>    <date>     <ord> <date>     <date>     <chr>                <dbl>
#>  1 2015-01-01 Thu   2014-12-28 2015-01-03 NewYearsDay              1
#>  2 2015-01-02 Fri   2014-12-28 2015-01-03 NoHoliday                0
#>  3 2015-01-03 Sat   2014-12-28 2015-01-03 NoHoliday                0
#>  4 2015-01-04 Sun   2015-01-04 2015-01-10 NoHoliday                0
#>  5 2015-01-05 Mon   2015-01-04 2015-01-10 NoHoliday                0
#>  6 2015-01-06 Tue   2015-01-04 2015-01-10 NoHoliday                0
#>  7 2015-01-07 Wed   2015-01-04 2015-01-10 NoHoliday                0
#>  8 2015-01-08 Thu   2015-01-04 2015-01-10 NoHoliday                0
#>  9 2015-01-09 Fri   2015-01-04 2015-01-10 NoHoliday                0
#> 10 2015-01-10 Sat   2015-01-04 2015-01-10 NoHoliday                0
```

In this example you will see that output for when the `out_df = "week"`.
It is the aggregation of the days dataframe up to the week level. You
can see how the first row relates to the first 7 rows in the data frame
above.

``` r
library(holiday.dates)

weeks_df <- tibble::tibble(weeks = seq.Date(as.Date('2015-01-01'), as.Date('2025-01-01'), by = 'week'))

holiday_data(df = weeks_df, out_df = "week") %>% head(10)
#> Joining with `by = join_by(greg_d, day_n, wk_beg_d, wk_end_d)`
#> Adding missing grouping variables: `wk_end_d`
#> Joining with `by = join_by(wk_beg_d, wk_end_d)`
#> # A tibble: 10 × 4
#> # Groups:   wk_beg_d [10]
#>    wk_beg_d   wk_end_d   holiday_names holiday_flag
#>    <date>     <date>     <chr>                <dbl>
#>  1 2014-12-28 2015-01-03 NewYearsDay              1
#>  2 2015-01-04 2015-01-10 NoHoliday                0
#>  3 2015-01-11 2015-01-17 NoHoliday                0
#>  4 2015-01-18 2015-01-24 MlkDay                   1
#>  5 2015-01-25 2015-01-31 NoHoliday                0
#>  6 2015-02-01 2015-02-07 SuperBowl                1
#>  7 2015-02-08 2015-02-14 ValentinesDay            1
#>  8 2015-02-15 2015-02-21 NoHoliday                0
#>  9 2015-02-22 2015-02-28 NoHoliday                0
#> 10 2015-03-01 2015-03-07 NoHoliday                0
```

**NOTE:** For those days/weels when there is no holiday the value for
holiday name field is `NoHoliday`.
