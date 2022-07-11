install.packages("dplyr")

Pokemon <- read.csv('C:/Users/terra/projects/ColumbiaUniversity/r-code/data-visualization-and-subset-examples/Pokemon.csv')


View(Pokemon) #view Pokemon as table

#checking number of rows and columns
nrow(Pokemon)
ncol(Pokemon)

#categorical columns
table(Pokemon$Legendary)# Tells me how many Pokemon are and are not legendary
table(Pokemon$Type.1) #Counts the occurance of different types in the Pokemon table
table(Pokemon$Generation) # Counts the number of Pokemon in each generation

# min and max values in table
min(Pokemon$HP)
max(Pokemon$HP)
max(Pokemon$Name)

#checking for missing values
is.na(Pokemon$Type.2)
sum(is.na(Pokemon$Type.2))


#rename columns
colnames(Pokemon) #gets all column names in table
colnames(Pokemon)[colnames(Pokemon) == 'Type.1']<- "primary_type" #changes Type.1 to column type, we can now see this in the view

#get all fire type Pokemon
Pokemon %>% filter(Pokemon$Type.2 == "Fire")-> fire_Pokemon
View(fire_Pokemon)