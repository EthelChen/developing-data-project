library(shiny)

shinyUI(fluidPage(
  titlePanel("Linear Regression Examples"),
  sidebarLayout(
    sidebarPanel(
      helpText("To show examples of simple and multiple linear regression"),
      selectInput("regression",label="Choose the linear regression type:",
                  choices=c("simple","multiple"),
                  selected="simple"),
      submitButton("Update")
    ),
    mainPanel(
     h4("Summary"),
     verbatimTextOutput("summary")
    )
  
  )
  
))