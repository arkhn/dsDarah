#' @title Differential sum
#' @description Computes a differentially private sum of a vector
#'
#  ' @param x One group to compare with the student-test
#  ' @param epsilon Privacy budget
#  ' @param x_min Lower bound for x
#  ' @param x_max Upper bound for x
#'
#' @return a numeric, differentially private sum of the input vector
#' @export


sumDP <- function(x, epsilon, x_min, x_max){
  sum <- py_module$pydp_wrapper$sum_PyDP$pyDP_bounded_sum(x, epsilon, x_min, x_max)
  return(sum)
}