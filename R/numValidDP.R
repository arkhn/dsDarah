#' @title Differential count of valid elements
#' @description Computes a differentially private count of valid elements of a vector
#'
#  ' @param x One group to compare with the student-test
#  ' @param epsilon Privacy budget
#'
#' @return a numeric, differentially private count of valid elements of the input vector
#' @export


numValidDP <- function(x, epsilon){
  length <- py_module$pydp_wrapper$count_PyDP$pyDP_count(x[!is.na(x)], epsilon)
  return(length)
}