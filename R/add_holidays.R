#' @title Added Holidays
#'
#' @description These functions add holiday dates that are not found in the
#' timeDate package.  These are either new federal holidays, or they are retail
#' holidays which are not covered in the timeDate package.
#'
#' @name add_holidays
#'
#' @return These functions return the dates of the holiday specified in the
#' name of the function. For example, `USValentinesDay()` will provide the dates
#' for valentines day in the US when passed a vector of years.
#'
#'

## New Retail Holiday Functions not in timeDate -------------------------------

#' @export
#' @param year <numeric> A vector of year integers.
#' @rdname add_holidays
USValentinesDay <-
  function(year = timeDate::getRmetricsOptions("currentYear")) {
    ans = year*10000 + 0214
    timeDate::timeDate(as.character(ans)) }

#' @export
#' @param year <numeric> A vector of year integers.
#' @rdname add_holidays
USSuperBowl <-
  function(year = timeDate::getRmetricsOptions("currentYear")) {
    ans = .nth.of.nday(year, 2, 7, 1)
    timeDate::timeDate(as.character(ans)) }

#' @export
#' @param year <numeric> A vector of year integers.
#' @rdname add_holidays
USSaintPatricksDay <-
  function(year = timeDate::getRmetricsOptions("currentYear")) {
    ans = year*10000 + 0314
    timeDate::timeDate(as.character(ans)) }

#' @export
#' @param year <numeric> A vector of year integers.
#' @rdname add_holidays
USMothersDay <-
  function(year = timeDate::getRmetricsOptions("currentYear")) {
    ans = .nth.of.nday(year, 5, 7, 2)
    timeDate::timeDate(as.character(ans)) }

#' @export
#' @param year <numeric> A vector of year integers.
#' @rdname add_holidays
USFathersDay <-
  function(year = timeDate::getRmetricsOptions("currentYear")) {
    ans = .nth.of.nday(year, 6, 7, 3)
    timeDate::timeDate(as.character(ans)) }

#' @export
#' @param year <numeric> A vector of year integers.
#' @rdname add_holidays
USHalloweenDay <-
  function(year = timeDate::getRmetricsOptions("currentYear")) {
    ans = year*10000 + 1031
    timeDate::timeDate(as.character(ans)) }

#' @export
#' @param year <numeric> A vector of year integers.
#' @rdname add_holidays
USCyberMonday <- function(year) { as.Date(timeDate::USThanksgivingDay(year)) + 4 }

## New Retail Holiday Functions not in timeDate -------------------------------

## New Federal Holidays not in timeDate ---------------------------------------

#' @export
#' @param year <numeric> A vector of year integers.
#' @rdname add_holidays
USJuneteenthDay <-
  function(year = timeDate::getRmetricsOptions("currentYear")) {
    ans = year*10000 + 0619
    timeDate::timeDate(as.character(ans)) }

## New Federal Holidays not in timeDate ---------------------------------------
