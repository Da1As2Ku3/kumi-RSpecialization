

library(shiny)
library(miniUI)

server<-function(input,output,session){
  observeEvent(input$done,{
    stopApp()
  })
}

