library(shiny)
shinyServer(function(input, output) {
    
    # Combine the selected variable and mpg into a new data frame
    selectedData <- reactive({
        aggregate(mpg ~ mtcars[names(mtcars)==input$ycol][,1],data = mtcars, mean)
    })
    
    output$plot1 <- renderPlot({
        barplot(selectedData()$mpg, names = selectedData()[,1], 
                main = "Variation of mpg",
                xlab = input$ycol, ylab = "mpg")
        
    })
    
})