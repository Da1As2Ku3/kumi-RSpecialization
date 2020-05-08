

library(shiny)


shinyServer(function(input, output) {
   
  output$plot1 <- renderPlot({
    set.seed(2016-05-25)
    number_of_points<-input$numeric
    minX<-input$SliderX[1]
    maxX<-input$SliderX[2]
    minY<-input$SliderY[1]
    maxY<-input$SliderY[2]
    dataX<-runif(number_of_points,minX,maxX)
    dataY<-runif(number_of_points,minY,maxY)
    xlab<-ifelse(input$show_xlab,"XAxis","")
    ylab<-ifelse(input$show_ylab,"YAxis","")
    main<-ifelse(input$show_title,"Title","")
    plot(dataX,dataY,xlab=xlab,ylab=ylab,main=main,xlim=c(-100,100),ylim=c(-100,100))
    
    
    
  })
  
})
