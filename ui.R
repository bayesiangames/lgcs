needs(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Jogos cooperativos na gestão da cadeia de suprimentos"),

  withMathJax(helpText("Some math here $$\\alpha+\\beta$$")),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("numAgent",
                  "Nº de agentes",
                  min = 1,
                  max = 10,
                  value = 3)
    ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("shapleyResult")
    )
  )
))
