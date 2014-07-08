# Code: http://shiny.rstudio.com/tutorial/lesson1/
library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should be automatically
  #     re-executed when inputs change
  #  2) Its output type is a plot

  output$distPlot <- renderPlot({
    x <- read.table(file='./data.frame.ttw.csv', header=TRUE)
    x    <- x[, 2]  # Old Faithful Geyser data
    #cat(x)
    types.length <- nchar(as.vector(x))
    bins <- seq(min(types.length), max(types.length), length.out = input$bins + 1)

    # draw the histogram with the specified number of bins
    hist(types.length, breaks = bins, col = 'darkgray', border = 'white',main="Histogramm: Wortlänge und deren Frequenz", xlab="types.length", ylab="Frequency")
    abline(v = median(types.length), col = 'red', lwd = 2)
    abline(v = mean(types.length), col = 'green', lwd = 2)
    abline(v = which.max(tabulate(type.length)), col = 'blue', lwd = 2
  })
    #Einlesen von Mittelwert, Median und Modus
  shinyServer(function(value,checkGroup) {
    
    # You can access the values of the widget (as a vector)
    # with input$checkGroup, e.g.
    output$value <- renderPrint({ input$checkGroup })

})



