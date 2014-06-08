#' Add Groundwork libraries
#' 
#' \code{gwLIBS}
#' A utility function to add the necessary CSS and js libraries for the GroundWorks CSS framework.
#' @param ... optional additional tags
#' @export
#' @examples
#' \dontrun{
#' gwLIBS()
#' }

gwLIBS <- function(...) {
  
  tagList(singleton(tags$head(
    tags$link(rel = "stylesheet", type = "text/css", href = "sgw/css/groundwork.css")
    , tags$script(src = "sgw/js/groundwork.all.js")
  )
  ),
  ...
  )
}

fractionalClass <- function(numerator = '', denominator = ''){
  if(!(is.integer(numerator) && is.integer(denominator))){
    stop("The numerator and denominator should be integers")
  }
  if(numerator > denominator){
    stop("The numerator is greater than the denominator.")
  }
  
  if(denominator > 12 || denominator < 1){
    stop("The denominator should be an integer from 1 to 12")
  }
  
  if(numerator < 1){
    stop("The numerator should be an integer from 1 to 12")
  }
  numerators <- c("one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve")
  denominators <- c("whole", "half", "third", "fourth", "fifth", "sixth", "seventh", "eighth", "ninth", "tenth", "eleventh", "twelfth")
  denominatorsPlural <- c("wholes", "halves", "thirds", "fourths", "fifths", "sixths", "sevenths", "eighths", "ninths", "tenths", "elevenths", "twelfths")
  
  y <- ifelse(numerator > 1, denominatorsPlural[denominator], denominators[denominator])
  x <- numerators[numerator]
  
  paste(x, y)
}

