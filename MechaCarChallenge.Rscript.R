## DELIVERABLE 1 ##
# Import data
mecha_car_mpg <- read.csv(file='MechaCar_mpg.csv',check.names = F, stringsAsFactors = F)

#perform linear regression that predicts the mpg of MechaCar prototypes
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_car_mpg)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_car_mpg))

# p-value: 5.35e-1 
#Adjusted R-squared:  0.6825


### DELIVERABLE 2 ###
# Import the data
sus_data <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
# Create a summary data frame
total_summary <- sus_data %>%  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
# Create the Summary data frame grouped by Manufacturing Lot
lot_summary <- sus_data %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

### DELIVERABLE 3 ###
# Peform t-test across all Lots
t.test(sus_data$PSI,mu = 1500)
# Peform t-test on Lot 1
t.test(subset(sus_data,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
# Peform t-test on Lot 2
t.test(subset(sus_data,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)
# Peform t-test on Lot 3
t.test(subset(sus_data,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)
