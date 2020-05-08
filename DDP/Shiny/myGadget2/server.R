



server<-function(input, output,session){
  observeEvent(input$done,{
    num1<-as.numeric(input$num1)
    num2<-as.numeric(input$num2)
    stopApp(num1*num2)
  })
}
  
   
  