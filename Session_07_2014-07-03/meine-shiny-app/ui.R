# Code: http://shiny.rstudio.com/tutorial/lesson1/
library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

  # Application title
  titlePanel("Hello Shiny!"),

  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30)
    ),
    #CheckboxGroup mit Mittelwert, Median, Modus
    checkboxGroupInput("checkGroup", label = h3("Checkbox group"), 
                       choices = list("Mittelwert" = 1, "Modus" = 2, "Median" = 3),
                       selected = 1),
    
    
    hr(),
    fluidRow(column(3, verbatimTextOutput("value")))
  
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))

