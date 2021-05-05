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
#ui <- fluidPage(
#  textInput("name", "What's your name?"),
#  numericInput("age", "How old are you?", value = NA),
    # textOutput("greeting")
# )

# server <- function(input, output, session) {
  # output$greeting <- renderText({
    # paste0("Hello ", input$name)
  # })
# }
#tableOutput("mortgage")
#output$greeting <- renderText({
#  paste0("Hello ", input$name)
#})

ui <- fluidPage(
  sliderInput("x", label = "If x is", min = 1, max = 50, value = 30),
  sliderInput("y", label = "and y is", min = 1, max = 50, value = 5),
  "then x times y is",
  textOutput("product")
)

server <- function(input, output, session) {
  output$product <- renderText({ 
    input$x * input$y
  })
}

shinyApp(ui, server)
shinyApp(ui, server) # Construct and start a shiny application from UI and server
