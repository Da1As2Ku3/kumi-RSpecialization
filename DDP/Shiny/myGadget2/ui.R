

library(shiny)
library(miniUI)


multiplyNumbers<-function(numbers1,numbers2){
  ui<-miniPage(
    gadgetTitleBar("Multiply two Numbers"),
    miniContentPanel(
      selectInput("num1","First Number",choices=numbers1),
      selectInput("num2","Second Number",choices=numbers2)
    )
  )
}
  
  