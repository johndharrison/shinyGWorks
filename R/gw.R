#' Create a GroundWorks navigation bar.
#'
#' Create a GroundWorks navigation bar. for use within a \code{\link{gwfluidPage}} 
#' 
#' @param title Title of the navbar.
#' @param ... Elements to include in the navbar
#' @param id The unique id for this element in the DOM.
#' @param gridBreakpoint By default, grid columns collapse into rows at the $small-tablet breakpoint. The grid breakpoint helpers allow you to target the breakpoint that the grid structure should persist through.
#' For more detail see \link{http://groundworkcss.github.io/groundwork/docs/breakpoints.htm}
#' @export
gwNavBar <- function(title, ..., id = NULL, gridBreakpoint = c(NA, "small-tablet", "mobile", "nocollapse"), class = NULL){
  gridBreakpoint <- match.arg(gridBreakpoint)
  class <- ifelse(is.null(class), 'nav', paste("nav", class))
  class <- ifelse(is.na(gridBreakpoint), class, paste(class, gridBreakpoint))
  tags$nav(class = class, role = "navigation", title = title, id = id, tags$ul(
    #    tagList(lapply(list(...), function(x){tags$li(tags$button(x))}))))
    tagList(list(...))))
}

#' Create a GroundWorks navigation menu bar.
#'
#' Create a GroundWorks navigation menu bar. for use within a \code{\link{gwfluidPage}} 
#' 
#' @param title Title of the navbar menu.
#' @param ... Elements to include in the navbar menu.
#' @param id The unique id for this element in the DOM.
#' @param gridBreakpoint By default, grid columns collapse into rows at the $small-tablet breakpoint. The grid breakpoint helpers allow you to target the breakpoint that the grid structure should persist through.
#' For more detail see \link{http://groundworkcss.github.io/groundwork/docs/breakpoints.htm}
#' @export
gwMenuBar <- function(title, ..., id = NULL){
  tagList(
    tags$li(tags$button(title, id = id)
            , tags$ul(role = "menu", list(...))
            )
    )
}

#' Create a GroundWorks navigation button.
#'
#' Create a GroundWorks navigation button. For use within a \code{\link{gwfluidPage}} 
#' 
#' @param title Title of the navbar button.
#' @param id The unique id for this element in the DOM.
#' @export
gwNavButton <- function(title, id = NULL, class = NULL){
  tags$li(tags$button(title, id = id, class = class))
}
