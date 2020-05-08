

library(shiny)


shinyUI(fluidPage(
  
  
  titlePanel("Plot Random Numbers"),
  
  
  sidebarLayout(
    sidebarPanel(
       numericInput("numeric",
                   "How many Random Numbers should be Plotted",value=1000,
                   min = 1,
                   max = 1000,
                   step=1),
       sliderInput("SliderX","Pick Minimum and Maximum X values",-100,100,value=c(-50,50)),
       sliderInput("SliderY","Pick Minimum and Maximum Y values",-100,100,value=c(-50,50)),
       checkboxInput("show_xlab","Show/Hide X Axis Label",value=TRUE),
       checkboxInput("Show_ylab","Show/Hide Y Axis Label",value=TRUE),
       checkboxInput("Show_title","Show/Hide Title")

    ),
    
  
    mainPanel(
      h3("Graph of Random Points"),
       plotOutput("plot1")
    )
  )
))
