shinyUI(
  fluidPage(
    titlePanel("Predicting Odontoblast Length in Guinea Pigs"),
    h6("This application operationalizes a prediction algorithm for the ToothGrowth data set in R.  This data set contains data for 60 guinea pigs, each receiving vitamin C in varying doses (0.5, 1.0, or 2.0 mg/day) by one of two delivery methods (orange juice or ascorbic acid) and the resulting length of odontoblasts (cells for tooth growth)."),
    h6("The application takes inputs for Vitamin C supplement type and dosage level, and returns the predicted odontoblast length.  We use a generalized linear model to fit the prediction model.  Note that this data set is very small, so the entire data set was used to inform our algorithm.  We should really only rely on the outputs directionally, because of 1) the size of the data set and 2) there were only 3 dosage levels in the original data set, so there is some liberal use of linear interpolation taking place in the application."),
    h4("Directions:"),
    h5("1. Select Vitamin C supplement type below"),
    h5("2. Select dosage level (mg/day) below"),
    h5("3. Prediction output will show below to the right"),
    sidebarLayout(
      sidebarPanel(radioButtons("radioButtons",label="Vitamin C Supplement Type",choices=list("Orange Juice" = "OJ","Ascorbic Acid" = "VC"))
      ,sliderInput("slider1",label="Dose (mg/day)",min=0.5,max=2.0,value=0.5)),
      mainPanel(h4("Predicted odontoblast length:"),
                span(strong(textOutput("number1")))
      )
    )
  )
)