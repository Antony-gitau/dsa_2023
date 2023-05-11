#lets load the heart attack data set and get a summary of that data
library(readxl)
AdultsHeartAttack_Data_csv <- read_excel("Documents/dsa 2023/AdultsHeartAttack_Data.csv.xlsx")
View(AdultsHeartAttack_Data_csv)
summary(AdultsHeartAttack_Data_csv)

#Plot charges (x- axis) against loss (y-axis) for the heart attack data set
plot(AdultsHeartAttack_Data_csv$CHARGES, AdultsHeartAttack_Data_csv$LOS, title("relationship between life loss and data charges"))

