library(shiny)
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
