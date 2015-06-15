library(shiny)
shinyUI(pageWithSidebar(
    headerPanel('Relationship of mpg(Miles Per Gallon) and other variables'),
    sidebarPanel(
        selectInput('ycol', 'Select variable for comparison', names(mtcars)[c(2,9,10,11)]),
        plotOutput('plot1')
    ),
    mainPanel(
        h2('Basic Exploratory Analysis'),
        p('Please note that this is a very basic app intended to toggle between select categorical variables in the mtcars dataset.'),
        p('This datasets is one of the base datasets in R. Details of the dataset can be found here'),
        a("https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/mtcars.html"),
        p('mpg     Miles/(US) gallon is the variable that can be seen across the given categorical variables.'),
        p('The categorical variables chosen are:'),
        p('1) cyl     Number of cylinders 
           2) am     Transmission (0 = automatic, 1 = manual) 
           3) gear     Number of forward gears
           4) carb     Number of carburetors '),
        h4('Getting Started with this Web App'),
        p('On the side panel you can change the variables that are injected to the plot.')
    )
))
