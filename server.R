library(shiny) 

data("mtcars")

mypredciton <- function(cyl,hp,wt){
    if(cyl != 0 & hp != 0 & wt !=0 ){
        modelFit <- lm(mpg ~ cyl + hp + wt,data=mtcars)
        df<- data.frame(cyl=cyl,hp=hp,wt=wt)
        predict(modelFit,newdata = df)    
    }
    
}

shinyServer( function(input, output) {
    output$oid1 <- renderText({
        paste(input$cyl, input$hp,input$wt)
    })
    predctMPG <- reactive({  mypredciton(input$cyl,input$hp,input$wt)  })
    output$prediction <- renderPrint({
        input$goButton
        isolate(predctMPG())
    })
    
} )