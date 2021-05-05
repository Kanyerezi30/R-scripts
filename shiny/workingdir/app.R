## This is my introduction to developing using shiny app
### Practice
library(shiny) # load the shiny package
#ui <- fluidPage(
#  selectInput("dataset", label = "Dataset", choices = ls("package:datasets")),
#  verbatimTextOutput("summary"),
#  tableOutput("table")
#) # Define the user interface, the HTML webpage that humans interact with

#server <- function(input, output, session) {
  # Create a reactive expression
#  dataset <- reactive({
#    get(input$dataset, "package:datasets")
#  })
  
#  output$summary <- renderPrint({
    # Use a reactive expression by calling it like a function
#    summary(dataset())
#  })
  
  
#  output$table <- renderTable({
#    dataset()
#  })
#} # Specifies the behaviour of our app by defining a server function. \
# It's currently empty, so our app doesn't do anything,but we'll be back to revisit this shortly
ui <- fluidPage(
  textInput("name", "What's your name?"),
  numericInput("age", "How old are you?", value = NA),
  textOutput("greeting")
)

server <- function(input, output, session) {
  output$greeting <- renderText({
    paste0("Hello ", input$name)
  })
}
#tableOutput("mortgage")
#output$greeting <- renderText({
#  paste0("Hello ", input$name)
#})
#numericInput("age", "How old are you?", value = NA)
#textInput("name", "What's your name?")
#textOutput("greeting")
#output$histogram <- renderPlot({
#  hist(rnorm(1000))
#}, res = 96)
shinyApp(ui, server) # Construct and start a shiny application from UI and server
