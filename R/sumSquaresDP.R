#' @title Differential sum of squares
#' @description Computes a differentially private sum of squares of a vector
#'
#  ' @param x One group to compare with the student-test
#  ' @param epsilon Privacy budget
#  ' @param x_min Lower bound for x
#  ' @param x_max Upper bound for x
#'
#' @return a numeric, differentially private sum of squares of the input vector
#' @export


sumOfSquaresDP <- function(x, epsilon, x_min, x_max){
  xx_min <- min(x_min^2, x_max^2)
  xx_max <- max(x_min^2, x_max^2)
  sum_of_squares <- py_module$pydp_wrapper$sum_PyDP$pyDP_bounded_sum(x^2, epsilon, xx_min, xx_max)
  return(sum_of_squares)
}