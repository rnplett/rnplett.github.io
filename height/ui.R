library(shiny)
shinyUI(fluidPage(
        titlePanel("Predicting Height (by Shoe Description)"),
        sidebarLayout(
                
                sidebarPanel(h3("Shoe Description"),
                        sliderInput('shoeSize', 
                                    strong('Shoe Size'), 
                                    9, min = 5, max = 15, step = 0.5),
                        br(),
                        radioButtons("laceColour", 
                                     strong("Shoe Lace Type"),
                                           c("Coloured Laces" = 1,
                                             "White Laces" = 2,
                                             "Black Laces" = 3),
                                     2),
                        br(),
                        dateInput("date", strong("Date:"))                  ),
                
                mainPanel(
                        tabsetPanel(
                                tabPanel("Predicted Height", 
                                         h3('Prediction Results'),
                                         h4('Shoe Size:'),
                                         textOutput("oshoeSize"),
                                         h4('Shoe Lace Type:'),
                                         textOutput('olaceColour'),
                                         h4('Date:'),
                                         textOutput('odate'),
                                         hr(),
                                         h4('Predicted Height:'),
                                         htmlOutput('oheight')
                                         ), 
                                tabPanel("Study Data", 
                                         textOutput("odata"),
                                         hr(),
                                         textOutput("odata2")
                                         )
                                )
                        )
                )
))
