library(shiny)
library(shinythemes)
library(stylo)
library(markdown)
library(stringr)
library(tm)

shinyUI(navbarPage("Data Science Capstone Project", 
                   
                   theme = shinytheme("united"),
                   
                   ############################### ~~~~~~~~1~~~~~~~~ ##############################  
                   ## Tab 1 - Prediction
                   
                   tabPanel("Word Prediction",
                            
                            tags$head(includeScript("./js/ga-shinyapps-io.js")),
                            
                            fluidRow(
                              
                              column(3),
                              column(6,
                                     h3('Write your word here'),
                                     h4('Two words result on a faster output.'),
                                     
                                     tags$textarea(id="word", rows=3, cols=40, "--- Wait, loading data ---"),
                                     tags$head(tags$style(type="text/css", "#word {width: 500px}")),
                                     h6('* Wait for the word "!!!TRY ME!!!" to show up.'),
                                     
                                     h4('You have entered:'),
                                     verbatimTextOutput("oid1"),
                                     h4('Predicted next three words:'),
                                     verbatimTextOutput("oid2"),
                              
                                     
                                     code('Made for Coursera Johns Hopkins University Data Science Capstone Project')
                              ),
                              column(3)
                            )
                   ),
                   
                   ############################### ~~~~~~~~2~~~~~~~~ ##############################
                   ## Tab 2 - About 
                   
                   tabPanel("About This Application",
                            fluidRow(
                              column(2,
                                     p("")),
                              column(8,
                                     includeMarkdown("explanation.Rmd")),
                              column(2,
                                     p(""))
                            )
                   ),
                   
                   ############################### ~~~~~~~~F~~~~~~~~ ##############################
                   
                   ## Footer
                   
                   tags$hr(),
                   
                   tags$br(),
                   
                   tags$span(style="color:grey", 
                             
                             
                             tags$br()
                   )
)
)