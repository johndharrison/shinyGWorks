#' Create a page to utilise Groundworks grids
#'
#' Add detail here
#'
#' @param ... Elements to include within the page
#' @rdname gwfluidPage
#' @export
gwfluidPage <- function(...){
  gwLIBS(...)
}

#' @rdname gwfluidPage
#' @param class additional class definitions to add.
#' @export
gwfluidRow <- function(..., class = NULL){
  class <- ifelse(is.null(class), "row", paste("row", class))
  div(class = class, ...)  
}

#' Create a gwcolumn within a UI definition
#'
#' Create a gwcolumn for use within a \code{\link{gwfluidRow}} 
#'
#' @param numerator
#' @param denominator
#' @param ... Elements to include within the column
#' @param class additional class definitions to add.
#' @param gridBreakpoint By default, grid columns collapse into rows at the $small-tablet breakpoint. The grid breakpoint helpers allow you to target the breakpoint that the grid structure should persist through.
#' For more detail see \link{http://groundworkcss.github.io/groundwork/docs/breakpoints.htm}
#'
#' @return A gwcolumn that can be included within a
#' \code{\link{gwfluidRow}}.
#'
#'
#' @seealso \code{\link{gwfluidRow}}.
#'
#' @export

gwcolumn <- function(nominator = '', denominator = c(1:12), ..., class = NULL
                     , gridBreakpoint = c(NA, "small-tablet", "mobile")){
  gridBreakpoint <- match.arg(gridBreakpoint)
  class <- ifelse(is.null(class), fractionalClass(as.integer(nominator), as.integer(denominator))
                  , paste(fractionalClass(as.integer(nominator), as.integer(denominator)), class))
  class <- ifelse(is.na(gridBreakpoint), class, paste(class, gridBreakpoint))
  div(class = class, ...)
}
