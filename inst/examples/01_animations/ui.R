library(shiny)

shinyUI(gwfluidPage(
  gwfluidRow(
    titlePanel("Hello GWorks!"),
    gwcolumn(1, 3
             , selectInput("anim", "Select Animation", animations)
             , numericInput('n', 'Number of obs', 100)
             , style = "background-color:yellow;", class = "right-two padded bounceInDown animated ")
    , uiOutput("test")
  )
)
)