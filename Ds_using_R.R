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



