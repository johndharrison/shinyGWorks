sgwLIBS <- function(...) {
  
  tagList(singleton(tags$head(
    tags$link(rel = "stylesheet", type = "text/css", href = "sgw/css/groundwork.css")
    , tags$script(src = "sgw/js/groundwork.all.js")
  )
  ),
  ...
  )
}

