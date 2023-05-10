#Plot charges (x- axis) against loss (y-axis) for the heart attack data set
plot(AdultsHeartAttack_Data_csv$CHARGES, AdultsHeartAttack_Data_csv$LOS, title("relationship between life loss and data charges"))

#lets now load the car data and get a summary of that data
library(readxl)
cardata_csv <- read_excel("Documents/dsa 2023/cardata.csv.xlsx")

# lets have a look at the csv
View(cardata_csv)

summary(cardata_csv)

# linear relationship between price(dependent) and year of a car (independent)
price_relationship <-lm(cardata_csv$Present_Price~cardata_csv$Year)
summary(price_relationship)

# linear relationship between present (outcome variable) and previous selling prices(predictor variable)
price <- lm(cardata_csv$Present_Price~cardata_csv$Selling_Price)
summary(price)$r.squared # this line gives the r squared value of the model
sigma(price)

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
