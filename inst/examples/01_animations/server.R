library(shiny)
library(shinyGWorks)
animations <- c("flash", "bounce", "shake", "tada", "swing", "wobble", "pulse", 
                "flip", "flipInX", "flipOutX", "flipInY", "flipOutY", 
                "fadeIn", "fadeInUp", "fadeInDown", "fadeInLeft", 
                "fadeInRight", "fadeInUpBig", "fadeInDownBig", "fadeInLeftBig", 
                "fadeInRightBig", "fadeOut", "fadeOutUp", "fadeOutDown", 
                "fadeOutLeft", "fadeOutRight", "fadeOutUpBig", "fadeOutDownBig", 
                "fadeOutLeftBig", "fadeOutRightBig", "bounceIn", 
                "bounceInDown", "bounceInUp", "bounceInLeft", "bounceInRight", 
                "bounceOut", "bounceOutDown", "bounceOutUp", "bounceOutLeft", 
                "bounceOutRight", "rotateIn", "rotateInDownLeft", 
                "rotateInDownRight", "rotateInUpLeft", "rotateInUpRight", 
                "rotateOut", "rotateOutDownLeft", "rotateOutDownRight", "rotateOutUpLeft", 
                "rotateOutUpRight", "lightSpeedIn", "lightSpeedOut", 
                "hinge", "rollIn", "rollOut", "spin", "spin-once", 
                "spin-twice", "spin-thrice", "spin-fast", "spin-fast-once", 
                "spin-fast-twice", "spin-fast-thrice", "spin-slow", "spin-slow-once", 
                "spin-slow-twice", "spin-slow")

shinyServer(function(input, output) {
  output$plot <- renderPlot({ hist(runif(input$n)) })
  
  output$test <- renderUI({
    gwcolumn(2, 3
             , plotOutput('plot')
             , style = "background-color:green;", class = paste("left-one padded", input$anim,"animated"))
    
  })
}
)
