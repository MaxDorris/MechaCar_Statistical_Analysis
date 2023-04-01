####################################### Deliverable 1

#import dplyr
library(dplyr)

#import MechaCar_mpg.csv to table/df
car_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#multiple linear regression model
car_reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=car_table)

#create summary report of multiple linear regression
summary(car_reg)


####################################### Deliverable 2

#import Suspension_Coil.csv to table/df
sus_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#generate total PSI summary table
total_summary <- sus_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
View(total_summary)

#generate PSI summary table groupbed by lot number
lot_summary <- sus_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
View(lot_summary)

####################################### Deliverable 3

#t-test comparison of each lot with the total

t.test(sus_table$PSI, mu=1500)

lot1 <- subset(sus_table, Manufacturing_Lot=="Lot1")
lot2 <- subset(sus_table, Manufacturing_Lot=="Lot2")
lot3 <- subset(sus_table, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)


####################################### Deliverable 4