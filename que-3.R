BuyerRatio <- read.csv("C:/Users/hp/Desktop/Revannath Data Sci/Assignments/Assign3-hypo test/BuyerRatio.csv")
View(BuyerRatio)
attach(BuyerRatio)
# now we are going to find the ratio of male and female for buyer by different reg

East<-(50/435)
West<-(142/1523)
North<-(131/1356)
South<-(70/750)
# now we converted data excel and created new file
# Import data from location
Q3<-read.csv(file.choose())
View(Q3)
attach(Q3)
table(Buyer,region)
chisq.test(table(Buyer,region))
# we get p vale >0.05
# P high Null fly Accept H0 hypothesis
# proportions of buyer ratio across 4 region are similar