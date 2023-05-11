# lets read the crime data set
library(readxl)
USCRIME_1_ <- read_excel("Documents/dsa 2023/USCRIME(1).xlsx")
View(USCRIME_1_)
summary(USCRIME_1_)

# modelling a linear model for the crime data set
linear_model <-lm(USCRIME_1_$Age~USCRIME_1_$M)
Linear_model_updated <- lm(R~Age+S+ED, data=USCRIME_1_)
linear_model_3 <- lm(USCRIME_1_$R~USCRIME_1_$Age,USCRIME_1_$S,USCRIME_1_$ED) #this one produces an error for some unknown error to me
summary(linear_model)
summary(Linear_model_updated)
