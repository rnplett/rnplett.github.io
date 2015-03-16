library(shiny)

predictHeight <- function(size, lace) 4.5 + lace*size/20

feetToFtIn <- function(height) {
        feet <- as.integer(height)
        inch <- (as.numeric(height)-as.integer(height))*12
        paste(as.character(feet)," feet, ",as.character(inch)," inches.",sep="")
}

shinyServer(
        function(input, output) {
                output$oshoeSize <- renderText({input$shoeSize})
                output$olaceColour <- renderText({
                        c("Coloured","White","Black")[as.integer(input$laceColour)]})
                output$odate <- renderPrint({input$date})
                output$oheight <- renderText({
                        feetToFtIn(predictHeight(input$shoeSize,
                                                 as.numeric(input$laceColour)))})
                output$odata <- renderText({"The prediction algorythm for this application's
                                            results are based on an intuitive linear relationship."})
                output$odata2 <- renderText({"No study data was analyzed to derive this algorythm."})
                }
)
