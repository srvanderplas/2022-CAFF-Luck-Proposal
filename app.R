#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(bslib)
library(thematic)

# Set up shiny app theme
theme <- bs_theme(
  bg = "#fefdfa", primary = "#d00000", secondary = "#001226",
  success = "#a5228d",   info = "#249ab5", warning = "#ffd74f", danger = "#f58a1f",
  base_font = font_google("Roboto"),
  code_font = font_google("Inconsolata"),
  font_scale = NULL, bootswatch = "united", fg = "rgb(0, 0, 0)")

thematic::thematic_shiny()

# Define UI for application that draws a histogram
ui <- navbarPage("NFARMS Project",
                 theme = theme,
                 tabPanel("In-Season"),
                 tabPanel("Sensor Data"),
                 tabPanel("Crop Health")
)

server <- function(input, output) {

}

# Run the application
shinyApp(ui = ui, server = server)
