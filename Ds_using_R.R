#DATA SET 
read.csv("path") -> pokemon
View(pokemon)

#DATA PREPROCESSING 

#number of rows and columns
nrow(pokemon)
ncol(pokemon)

#total values of paticular category
table(pokemon$is_legendary)
table(pokemon$generation)
table(pokemon$type1)

#all colnames or a particular col
colnames(pokemon)
colnames(pokemon) [colnames(pokemon) == 'type1']

#min-max
min(pokemon$hp)#hp values column
max(pokemon$hp)

#missing values check
is.na(pokemon$abilities)
sum(is.na(pokemon$abilities))

#rename columns
colnames(pokemon) [colnames(pokemon) == 'type1'] <- "primary_type"
colnames(pokemon) [colnames(pokemon) == 'type2'] <- "secondary_type"
colnames(pokemon) [colnames(pokemon) == 'name'] <- "pokemon_name"

#filtering DATA MANIPULATION things...

pokemon %>% filter(pokemon$primary_type=="grass") -> grass_pokemon
view(grass_pokemon)
pokemon %>% filter(pokemon$primary_type=="ghost") -> ghost_pokemon
view(ghost_pokemon)

min(grass_pokemon$speed)
max(grass_pokemon$speed)

mean(ghost_pokemon$sp_attack)#special attack
mean(ghost_pokemon$sp_defense)

#DATA VISUALIAZTION
library(ggplot2)

#histogram
ggplot(data=coffee,aes(x=Final_sales)) +geom_histogram()
ggplot(data=coffee,aes(x=Quantity)) +geom_histogram(fill="red")

#barplot
ggplot(data=coffee,aes(x=City,fill=as.factor(City))) +geom_bar()

ggplot(data=CostaRica,aes(x=Final_sales)) +geom_bar(fill="coral")
ggplot(data=CostaRica,aes(x=Sales_amt)) +geom_bar(fill="turquoise")

ggplot(data=Ethiopian,aes(x=Final_sales,fill=as.factor(Final_sales))) +geom_bar()

