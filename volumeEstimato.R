# set working directory
setwd("C:/Users/emili/Documents/Queen's/Courses/Fifth Year/BIOL 432/Week One/BIOL432_Assignment1")

#read the measurement data table
measurementData<-read.table("measurements.csv", header=T, sep="," )

library(dplyr)

#adding a new volume column to calculate limb volume using the equation V=πr2h
#same calculation as volume of a cylinder

measurementData<-mutate(measurementData, Volume = 
                           3.14*((0.5*Limb_width)^2)*Limb_length)

head(measurementData)

#overwrite existing csv. now with a volume column 
write.csv(measurementData, "measurements.csv", row.names = FALSE)
