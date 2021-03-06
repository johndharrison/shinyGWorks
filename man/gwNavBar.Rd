% Generated by roxygen2 (4.0.1): do not edit by hand
\name{gwNavBar}
\alias{gwNavBar}
\title{Create a GroundWorks navigation bar.}
\usage{
gwNavBar(title, ..., id = NULL, gridBreakpoint = c(NA, "small-tablet",
  "mobile", "nocollapse"), class = NULL)
}
\arguments{
\item{title}{Title of the navbar.}

\item{...}{Elements to include in the navbar}

\item{id}{The unique id for this element in the DOM.}

\item{gridBreakpoint}{By default, grid columns collapse into rows at the $small-tablet breakpoint. The grid breakpoint helpers allow you to target the breakpoint that the grid structure should persist through.
For more detail see \link{http://groundworkcss.github.io/groundwork/docs/breakpoints.htm}}
}
\description{
Create a GroundWorks navigation bar. for use within a \code{\link{gwfluidPage}}
}

