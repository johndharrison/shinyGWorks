library(shiny)
library(shinyGWorks)

shinyServer(function(input, output) {
  output$plot <- renderPlot({ hist(runif(input$n)) })
  
  output$test <- renderUI({
    gwcolumn(2, 3
             , plotOutput('plot')
             , style = "background-color:green;", class = paste("left-one padded box", input$anim,"animated"))
    
  })
}
)
