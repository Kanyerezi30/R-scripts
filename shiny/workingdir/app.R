## This is my introduction to developing using shiny app
library(shiny) # load the shiny package
ui <- fluidPage(
  selectInput("dataset", label = "Dataset", choices = ls("package:datasets")),
  verbatimTextOutput("summary"),
  tableOutput("table")
) # Define the user interface, the HTML webpage that humans interact with

server <- function(input, output, session) {
} # Specifies the behaviour of our app by defining a server function. \
# It's currently empty, so our app doesn't do anything,but we'll be back to revisit this shortly

shinyApp(ui, server) # Construct and start a shiny application from UI and server
