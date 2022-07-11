install.packages("dplyr")
install.packages("ggplot2")
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
Pokemon %>% filter(Pokemon$Type.2 == "Grass")-> grass_pokemon
View(grass_pokemon)

#find average attack of fire pokemon
mean(fire_pokemon$Attack)

# ploting pokemon data ( make sure ggplot is enabled)
ggplot(data = fire_pokemon, aes(x=HP))+geom_histogram()  #counts the number of fire pokemon by hp
#aes stands for aesthetic where we set the x-axis to be hp
ggplot(data = fire_pokemon, aes(x=HP))+geom_histogram(fill="red")
#changes the chart to red

ggplot(data = fire_pokemon, aes(x=Attack))+geom_histogram(fill="red")

#bar chart to show how many fire type pokemon are legendary
ggplot(data=fire_pokemon,aes(x=Legendary))+geom_bar(fill="pink")

pokemon %>% filter(primary_type=="Water") -> water_pokemon
mean(water)

ggplot(data=fire_pokemon,aes(x=Generation,fill=as.factor(Generation))) +geom_bar() #multi color bars representing the generations of fire pokemon

ggplot(data=fire_pokemon, aes(x=primary_type, fill=as.factor(primary_type)))+ geom_bar() #primary types of those with a second type of fire

ggplot(data = fire_pokemon, aes(x=Sp..Atk, y=Sp..Def)) + geom_point() #chart to see the correlation between special def and special attach of fire pokeon
# we can iner that if a pokemon has a higher special attack then it probabl has a higher special defense


