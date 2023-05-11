#lets now load the car data and get a summary of that data
library(readxl)
cardata_csv <- read_excel("Documents/dsa 2023/cardata.csv.xlsx")

# lets have a look at the csv
View(cardata_csv)
summary(cardata_csv)

# investigating the relationship between a car's present price and its selling price
plot(cardata_csv$Selling_Price, cardata_csv$Present_Price, title("A car present price relationship to selling price") )

# linear relationship between price(dependent) and year of a car (independent)
price_relationship <-lm(cardata_csv$Present_Price~cardata_csv$Year)
summary(price_relationship)

# linear relationship between present (outcome variable) and previous selling prices(predictor variable)
price <- lm(cardata_csv$Present_Price~cardata_csv$Selling_Price)
summary(price)$r.squared # this line gives the r squared value of the model
sigma(price)

