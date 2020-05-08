

library(shiny)
library(miniUI)


pickTrees<-function(){
  ui<-miniPage(
    gadgetTitleBar("Select Points by Dragging your Mouse"),
    miniContentPanel(
      plotOutput("plot",height="100%",brush="brush")
    )
  )
}
  
  