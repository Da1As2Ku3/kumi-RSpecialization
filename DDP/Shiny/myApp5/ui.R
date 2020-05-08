

library(shiny)


shinyUI(fluidPage(
  
  
  titlePanel("Predict Horsepower from MPG"),
  
 
  sidebarLayout(
    sidebarPanel(
       sliderInput("sliderMPG","What is the MPG of the Car?",10,35,value=20),
       checkboxInput("showModel1","Show/Hide Model1",value=TRUE),
       checkboxInput("showModel2","Show/Hide Model2",value=TRUE),
       submitButton("Submit")
                   
    ),
    
    
    mainPanel(
       plotOutput("plot1"),
       h3("Predicted Horsepower from Model1:"),
       textOutput("pred1"),
       h3("Predicted Horsepower from Model2:"),
       textOutput("pred2")
       
    )
  )
))
