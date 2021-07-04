# Deliverable 1
library(dplyr)
MechaCarData <- read.csv("MechaCar_mpg.csv")
mpg_regression <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCarData)
summary(mpg_regression)
# Deliverable 2
SuspensionCoilData <- read.csv("Suspension_Coil.csv")
library(tidyverse)
total_summary <- summarize(SuspensionCoilData,Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
lot_summary <- SuspensionCoilData %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
# Deliverable 3
t.test(SuspensionCoilData$PSI,mu=1500)
t.test(subset(SuspensionCoilData,Manufacturing_Lot=="Lot1")$PSI,mu=1500)
t.test(subset(SuspensionCoilData,Manufacturing_Lot=="Lot2")$PSI,mu=1500)
t.test(subset(SuspensionCoilData,Manufacturing_Lot=="Lot3")$PSI,mu=1500)
