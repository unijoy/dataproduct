library(shiny) 
shinyUI(pageWithSidebar(
    headerPanel("Motor Trend Car Road Tests"), 
    sidebarPanel(
        h4('1.Input your Number of cylinders'), 
        numericInput('cyl', 'cylinders', 0, min = 0, max = 24, step = 1),
        h4('2.Input your Gross horsepower'), 
        numericInput('hp', 'Gross horsepower', 0, min = 0, max = 400, step = 1),
        h4('3.Input your Weight(lb/1000)'), 
        numericInput('wt', 'Weight', 0, min = 0, max = 3000, step = 1),
        h4('Submit your values'),
        actionButton("goButton","Prediction")
    ),
    mainPanel(
        h3('Details'),
        h4('Prediction data'),
        h5('The data was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973–74 models)'),
        h4('Steps'),
        h5('Give us your cylinders,Gross horseppower,Weight(lb/1000) in the left panel,and click the Prediciton button'),
        h5('our prediction function will predict Miles/(US) gallon'),
        h4('You entered'), 
        verbatimTextOutput("oid1"),
        h4('Which resulted in a prediction of '), 
        verbatimTextOutput("prediction")
    ) 
))