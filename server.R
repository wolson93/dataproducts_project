data(ToothGrowth)
library(caret)
control <- trainControl(method="cv")
fit_glm <- train(len~.,data=ToothGrowth,method="glm",trControl=control)


shinyServer(function(input,output){
  
  output$number1 <- renderText({predict(fit_glm,newdata=data.frame("supp"=c(input$radioButtons),"dose"=c(input$slider1)))})
  
}
)