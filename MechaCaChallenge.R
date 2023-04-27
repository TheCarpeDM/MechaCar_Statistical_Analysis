library(dplyr)
mcmpg <- read.csv(file="Completed Challenges/MechaCar_Statistical_Analysis/MechaCar_mpg.csv")
reg <-lm(mpg ~ ., data=mcmpg)
sum <-summary(reg)
print(sum)

sus <- read.csv(file="Completed Challenges/MechaCar_Statistical_Analysis/Suspension_Coil.csv")
total_summary <-sus %>% summarize(Mean = mean(PSI),  Median = median(PSI), Variance = var(PSI),  SD = sd(PSI))
print(total_summary)

grouped <-group_by(sus, Manufacturing_Lot)
lot_summary <-grouped %>% summarize(Mean = mean(PSI),  Median = median(PSI), Variance = var(PSI),  SD = sd(PSI))
print(lot_summary)

all_ttest <-t.test(sus$PSI, mu=1500)
print(all_ttest)

lot1_ttest <-t.test(subset(sus$PSI, sus$Manufacturing_Lot == "Lot1"), mu=1500)
print(lot1_ttest)

lot2_ttest <-t.test(subset(sus$PSI, sus$Manufacturing_Lot == "Lot2"), mu=1500)
print(lot2_ttest)

lot3_ttest <-t.test(subset(sus$PSI, sus$Manufacturing_Lot == "Lot3"), mu=1500)
print(lot3_ttest)

print(all_ttest)
print(lot1_ttest)
print(lot2_ttest)
print(lot3_ttest)
