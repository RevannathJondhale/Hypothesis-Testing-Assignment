Customer_Order_Form<-read.csv(file.choose())
View(Customer_Order_Form)
attach(Customer_Order_Form)

library(readxl)
question<-read_excel("C:/Users/hp/Desktop/Revannath Data Sci/Assignments/Assign3-hypo test/question4.xlsx")
View(question)
stacked_data<-stack(question)
View(stacked_data)
attach(stacked_data)
table(stacked_data$values,stacked_data$ind)
chisq.test(table(stacked_data$values,stacked_data$ind))

# we get P value >0.05
#P high null fly, accept H0 hypothesis
#hence all the proportion are = % defect does not varies from region to region