library(MASS)

shinyServer(
  function(input,output){
   output$summary<-renderPrint({
     if(input$regression=="simple")
       lm.fit=lm(medv~lstat,data=Boston)
     else if(input$regression=="multiple")
     lm.fit=lm(medv~lstat+age,data=Boston)
     
     summary(lm.fit)
   })
})