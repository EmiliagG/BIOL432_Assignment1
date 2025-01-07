#set working directory
setwd("C:/Users/emili/Documents/Queen's/Courses/Fifth Year/BIOL 432/Week One/BIOL432_Assignment1")

#create the vectors

speciesOptions<- c("Danaus plexippus", "Cirsium vulgare", 
"Cardinalis cardinalis", "Betula papyrifera", "Vulpes vulpes")

#create vector for species name
Iters<-100
speciesOutput<-vector("character",Iters)
for(i in 1:Iters){
  speciesOutput<-sample(speciesOptions, 100, replace=TRUE)
}
print(speciesOutput)
  
#create a vector for limb width
limb_widthOutput<-vector("numeric",Iters)
for(i in 1:Iters2){
  limb_widthOutput[i]<-rnorm(1,2,0.5)
}

#create a vector for limb length
limb_lengthOutput<-vector("numeric", Iters)
for (i in 1:Iters3) {
  limb_lengthOutput[i] <-rnorm(1, 5, 2)
}

#create a vector for observer names 
observerNames<-c("Kyle", "Mark", "Alexandra")
observer_Output<-vector("character",Iters)
for(i in 1:Iters){
  observer_Output<-sample(observerNames, 100, replace=TRUE)
}

#creating the necessary data frame 
measurements<-data.frame("Organism" = speciesOutput, 
                         "Limb_width" = limb_widthOutput,
                         "Limb_length" = limb_lengthOutput, 
                         "Observer" = observer_Output)
head(measurements)

write.csv(measurements, "measurements.csv")

