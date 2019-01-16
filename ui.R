#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(quantmod)

# Define UI for application that draws a histogram
shinyUI(pageWithSidebar(
  
  headerPanel("Word predictive analytics application"),
  
  sidebarPanel(
    
    textInput("text", 
              label = h3("Enter your text:"), 
              value = "How are you"),
    h6(em("Note: The application works as typeahead, you only need to hit the 'space' key")),
    h6(em("Note: Numbers and special characters will be ignored")),
    
    submitButton("SUBMIT")
    
  ),
  
  mainPanel(
    h4("Predicted next word from twitter dataset:"),
    verbatimTextOutput("twitter_next"),
    h4("Predicted next word from blogs dataset:"),
    verbatimTextOutput("blogs_next"),
    h4("Predicted next word from news dataset:"),
    verbatimTextOutput("news_next"),

    tags$footer(tags$script(src="autosubmit.js"))
    
  )
  
))