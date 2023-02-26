# Load dependencies
# Tidyverse is already installed
# install.packages('tidyverse')

# Call dplyr
library(dplyr)

######################### DELIVERABLE 1 #########################

# Import the dataset
mechaCarPop <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors=F)

# Check the import
head(mechaCarPop)

# Create a linear regression for the mpg dataset

# Summarize
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaCarPop))

# Messing with correlation between various factors and MPG
plt <- ggplot(mechaCarPop, aes(x=mpg, y=vehicle_weight))
plt + geom_point()

######################### DELIVERABLE 2 #########################

# Import the dataset
coils <- read_csv('Suspension_Coil.csv')

# Create a summary dataframe
# for the PSI column
total_summary <- summarize(coils, Mean=mean(coils$PSI), Median=median(coils$PSI), Variance=var(coils$PSI), SD=sd(coils$PSI))

# For the manufacturing lots
lot_summary <- coils %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
