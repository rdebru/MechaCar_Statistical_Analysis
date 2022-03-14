install.packages('dplyr')
#load dplyr
library(dplyr)
#Load the dataset
MechaCar_data = read.csv("MechaCar_mpg.csv",header=TRUE) 
head(MechaCar_data)

#generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_data)

#generate summary statistics
summary_r <- summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_data))
summary_r



#Deliverable 2
Suspension_Coil_data = read.csv("Suspension_Coil.csv",header=TRUE) 
head(Suspension_Coil_data)

# creates a total_summary dataframe
total_summary <- Suspension_Coil_data %>% summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
total_summary

#creates a lot_summary dataframe
lot_summary <- Suspension_Coil_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
lot_summary

#Deliverable 3
?t.test()

# t test
t.test(Suspension_Coil_data$PSI, mu=1500)

# filter lot 1 data
Lot1_data <- subset(Suspension_Coil_data, Manufacturing_Lot == "Lot1")
Lot1_data

# filter lot 2 data
Lot2_data <- subset(Suspension_Coil_data, Manufacturing_Lot == "Lot2")
Lot2_data

# filter lot 3 data
Lot3_data <- subset(Suspension_Coil_data, Manufacturing_Lot == "Lot3")
Lot3_data

# t tests for the lots
t.test(Lot1_data$PSI, mu=1500)

t.test(Lot2_data$PSI, mu=1500)

t.test(Lot3_data$PSI, mu=1500)

