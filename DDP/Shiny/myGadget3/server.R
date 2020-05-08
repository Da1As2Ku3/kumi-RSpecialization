

library(shiny)
library(miniUI)


server<-function(input, output,session){
   
  output$plot <- renderPlot({
    plot(trees$Girth,trees$Volume,main="Trees!",xlab="Girth",ylab="Volume",pch=20,cex=2)
  })
observeEvent(input$done,{
  stopApp(brushedPoints(trees,input$brush,xvar="Girth",yvar="Volume"))
})
}
    
    