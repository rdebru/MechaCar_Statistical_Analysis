install.packages('dplyr')
#load dplyr
library(dplyr)
#Load the dataset
MechaCar_data = read.csv("MechaCar_mpg.csv",header=TRUE) 
head(MechaCar_data)

#generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_data)

#generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_data))




#Deliverable 2
Suspension_Coil_data = read.csv("Suspension_Coil.csv",header=TRUE) 
head(Suspension_Coil_data)

# creates a total_summary dataframe
total_summary <- Suspension_Coil_data %>% summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
total_summary

#creates a lot_summary dataframe
lot_summary <- Suspension_Coil_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
lot_summary
