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
#   textInput("name", "What's your name?", placeholder = "Your name"),
#   passwordInput("password", "What's your password?"),
#   textAreaInput("story", "Tell me about yourself", rows = 3)
# )
# 
# server <- function(input, output, session) {
# 
# }

### Working with numeric inputs
# ui <- fluidPage(
#   numericInput("num", "Number one", value = 0, min = 0, max = 100),
#   sliderInput("num2", "Number two", value = 50, min = 0, max = 100),
#   sliderInput("rng", "Range", value = c(10, 20), min = 0, max = 100)
# )
# 
# server <- function(input, output, session){
# 
# }

### Working with dates
# ui <- fluidPage(
#   dateInput("dob", "When were you born?"), # Single date
#   dateRangeInput("holiday", "When do you want to go on vacation next?"), # Range of dates
#   
# )
# 
# server <- function(input, output, session) {
# 
# }

### Limited choices or prespecified values
# animals <- c("dog", "cat", "mouse", "bird", "other", "I hate animals")
# 
# ui <- fluidPage(
#   selectInput("state", "What's your favourite state?", state.name, multiple = T),
#   radioButtons("animal", "What's your favourite animal?", choices = animals),
#   checkboxGroupInput("animal", "What animals do you like?", animals), # Allow multiple choices
#   checkboxInput("cleanup", "Clean up?", value = TRUE),
#   checkboxInput("shutdown", "Shutdown?")
# )
# 
# server <- function(input, output, session) {
#   
# }

### Working with file uploads
# ui <- fluidPage(
#   fileInput("upload", NULL)
# )
# 
# server <- function(input, output, session){
#   
# }

### Working with action buttons. Allow a user to do an action
# ui <- fluidPage(
#   actionButton("click", "Click me!"),
#   actionButton("drink", "Drink me!", icon = icon("cocktail"))
# )
# 
# server <- function(input, output, session) {
#   
# }

### Working with text output
# ui <- fluidPage(
#   textOutput("text"), # output placeholder for regular text
#   verbatimTextOutput("code") # output placeholder for code and console
# )
# server <- function(input, output, session) {
#   output$text <- renderText({ 
#     "Hello friend!" 
#   })
#   output$code <- renderPrint({ 
#     summary(1:10) 
#   })
# }

### Working with data frames
# ui <- fluidPage(
#   tableOutput("static"), # static tables
#   dataTableOutput("dynamic") # dynamic tables
# )
# server <- function(input, output, session) {
#   output$static <- renderTable(head(mtcars)) # All rows are displayed
#   output$dynamic <- renderDataTable(mtcars, options = list(pageLength = 5)) # A specified number of rows is displayed
# }

### Working with plots
# ui <- fluidPage(
#   plotOutput("plot", width = "400px")
# )
# server <- function(input, output, session) {
#   output$plot <- renderPlot(plot(1:5), res = 96)
# }

### Working with reactivity
# ui <- fluidPage(
#   textInput("name", "What's your name?"),
#   textOutput("greeting")
# )
# 
# server <- function(input, output, session) {
#   output$greeting <- renderText({
#     paste0("Hello ", input$name, "!")
#   })
# }
# ui <- fluidPage(
#   textInput("name", "What's your name?"),
#   textOutput("greeting")
# )

# server <- function(input, output, server) {
#   output$greeting <- renderText(paste0("Hello ", input$name))
# }

# server <- function(input, output, server) {
#   string <- reactive({
#     paste0("Hello ", input$name)})
#   output$greeting <- renderText(string())
# }
# 
# server <- function(input, output, server) {
#   output$greeting <- renderText(paste0("Hello ", input$name))
# }


### The app
# ui <- fluidPage(
#   fluidRow(
#     column(3, 
#            numericInput("lambda1", label = "lambda1", value = 3),
#            numericInput("lambda2", label = "lambda2", value = 5),
#            numericInput("n", label = "n", value = 1e4, min = 0),
#            actionButton("simulate", "Simulate!")
#     ),
#     column(9, plotOutput("hist"))
#   )
# )
# 
# server <- function(input, output, session) {
#   x1 <- eventReactive(input$simulate, {
#     rpois(input$n, input$lambda1)
#   })
#   x2 <- eventReactive(input$simulate, {
#     rpois(input$n, input$lambda2)
#   })
#   
#   output$hist <- renderPlot({
#     freqpoly(x1(), x2(), binwidth = 1, xlim = c(0, 40))
#   }, res = 96)
# }

### Observer
# ui <- fluidPage(
#   textInput("name", "What's your name?"),
#   textOutput("greeting")
# )
# 
# server <- function(input, output, session) {
#   string <- reactive(paste0("Hello ", input$name, "!"))
#   
#   output$greeting <- renderText(string())
#   observeEvent(input$name, {
#     message("Greeting performed")
#   })
# }

### Case study: ER injuries
# library(shiny)
library(vroom)
library(tidyverse)
dir.create("neiss")
#> Warning in dir.create("neiss"): 'neiss' already exists
download <- function(name) {
  url <- "https://github.com/hadley/mastering-shiny/raw/master/neiss/"
  download.file(paste0(url, name), paste0("neiss/", name), quiet = TRUE)
}
download("injuries.tsv.gz")
download("population.tsv")
download("products.tsv")

# Read the dataset
injuries <- vroom::vroom("neiss/injuries.tsv.gz")
injuries

products <- vroom::vroom("neiss/products.tsv")
products

population <- vroom::vroom("neiss/population.tsv")
population

# Exploration
selected <- injuries %>% filter(prod_code == 649)
nrow(selected)

selected %>% count(location, wt = weight, sort = TRUE)
selected %>% count(body_part, wt = weight, sort = TRUE)
selected %>% count(diag, wt = weight, sort = TRUE)

summary <- selected %>% 
  count(age, sex, wt = weight)
summary

summary %>% 
  ggplot(aes(age, n, colour = sex)) + 
  geom_line() + 
  labs(y = "Estimated number of injuries")

summary <- selected %>% 
  count(age, sex, wt = weight) %>% 
  left_join(population, by = c("age", "sex")) %>% 
  mutate(rate = n / population * 1e4)

summary

summary %>% 
  ggplot(aes(age, rate, colour = sex)) + 
  geom_line(na.rm = TRUE) + 
  labs(y = "Injuries per 10,000 people")

selected %>% 
  sample_n(10) %>% 
  pull(narrative)

