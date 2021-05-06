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

# ui <- fluidPage(
  # sliderInput("x", label = "If x is", min = 1, max = 50, value = 30),
  # sliderInput("y", label = "and y is", min = 1, max = 50, value = 5),
  # "then x times y is",
  # textOutput("product")
# )

# server <- function(input, output, session) {
  # output$product <- renderText({ 
    # input$x * input$y
  # })
# }


# ui <- fluidPage(
#   sliderInput("x", "If x is", min = 1, max = 50, value = 30),
#   sliderInput("y", "and y is", min = 1, max = 50, value = 5),
#   "then, (x * y) is",
#   textOutput("product"),
#   "and, (x * y) + 5 is",
#   textOutput("product_plus5"),
#   "and (x * y) + 10 is",
#   textOutput("product_plus10")
# )
# 
# server <- function(input, output, session) {
#   # Create a product reactive expression
#   pdt_exp <- reactive({
#     input$x * input$y
#   })
#   output$product <- renderText({ 
#     pdt_exp()
#   })
#   output$product_plus5 <- renderText({ 
#     pdt_exp() + 5
#   })
#   output$product_plus10 <- renderText({ 
#     pdt_exp() + 10
#   })
# 
# library(ggplot2)
# 
# datasets <- c("economics", "faithfuld", "seals")
# ui <- fluidPage(
#   selectInput("dataset", "Dataset", choices = datasets),
#   verbatimTextOutput("summary"),
#   plotOutput("plot")
# )
# 
# server <- function(input, output, session) {
#   dataset <- reactive({
#     get(input$dataset, "package:ggplot2")
#   })
#   output$summary <- renderPrint({
#     summary(dataset())
#   })
#   output$plot <- renderPlot({
#     plot(dataset())
#   }, res = 96)
# }

### Working with free text
# ui <- fluidPage(
#   textInput("name", "What's your name?"),
#   passwordInput("password", "What's your password?"),
#   textAreaInput("story", "Tell me about yourself", rows = 3)
# )
# 
# server <- function(input, output, session) {
#   
# }

### Working with numeric inputs
ui <- fluidPage(
  numericInput("num", "Number one", value = 0, min = 0, max = 100),
  sliderInput("num2", "Number two", value = 50, min = 0, max = 100),
  sliderInput("rng", "Range", value = c(10, 20), min = 0, max = 100)
)

server <- function(input, output, session){
  
}
shinyApp(ui, server) # Construct and start a shiny application from UI and server
