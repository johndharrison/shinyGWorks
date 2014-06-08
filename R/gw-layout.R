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
#' @export
gwfluidRow <- function(...){
  div(class = "row", ...)  
}

#' Create a gwcolumn within a UI definition
#'
#' Create a gwcolumn for use within a \code{\link{gwfluidRow}} 
#'
#' @param numerator
#' @param denominator
#' @param ... Elements to include within the column
#' @param class additional class definitions to add.
#'
#' @return A gwcolumn that can be included within a
#' \code{\link{gwfluidRow}}.
#'
#'
#' @seealso \code{\link{gwfluidRow}}, \code{\link{gwfixedRow}}.
#'
#' @export

gwcolumn <- function(nominator = '', denominator = c(1:12), ..., class = NULL){
  class <- ifelse(is.null(class), fractionalClass(as.integer(nominator), as.integer(denominator))
                  , paste(fractionalClass(as.integer(nominator), as.integer(denominator)), class))
  div(class = class, ...)
}
