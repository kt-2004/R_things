#-------:BASIC SYNTAX OF R LANGUAGE:----
sentence <- "Hello world"
print(sentence)
list <- c("hello","world")
print(list)
#dataframe making
data.frame(list)

#VARIABLES DATATYPES:----
#1.vector
# -logical
# -numeric
# -integer
# -complex
# -character
# -raw
#2.Lists
#3.Matrices
#4.Arrays for more than 2 or 3 matrices
#5.Factors
#6.Dataframe

#DATATYPE EXAMPLES:------
a <- FALSE
class(a) #use to check datatype of variable
#List
li <-list(c(1,2,3,"hello")) 
li
class(li)
#Array
arr <-Array(c(1,2,3,4),dim=(3)) 
arr
#Matrix
mat <-matrix(c(1,2,3,4),nrow=2,ncol=2)
mat
#Character
color <- c("black","red","grey")
color
class(color)
#Factor
color <- factor(c("black","red","grey"))
color <- factor(c("black","red","grey"),levels=c("black","grey","red"))
color
class(color)
nlevels(color)#to check levels 
#Dataframe
df <-data.frame(color,li)
df

number <- 1:7
number #will store numbers from 1 to 7 in the variable number.

x <- seq(1,9,by=2)
x+x
sort(x)
f <-c[c(1,2,3)]
x+f

color <- list("black","red","grey")#character
names(color) <- c("1","2","3")
color
color[c("2")]

mat <-matrix(c(1,2,3,4),nrow=2,ncol=2)
mat[2,2]+mat[1,1]

arr <- Array(c(mat,(7,8,9)))
arr[1,2]

ls()#this function will show all the variables in the current file or workspace.
rm(color)# to remove a variable or object.

#OPERATOR:-----
a <-c(1,2)
b <-(3,4)
a+b
a<b
a&b
a|b
a!b 
a->1
a<-2
a %in% b

#LOOPS AND FUNCTIONS:-----
v <-5
for (i in 1:v)
{
    h <-1+v
    print(h)
}
#BUILT-IN FUNCTIONS:-----
sum(100:200)
sort(10:1)#help(sort)
max(10:30)
mean(10:15)

#USER DEFINE FUNCTION:----
user.defined.function <- function(a)#function(a=10) for default arguments...
{
    b <-5+a
    print(b)
}
user.defined.function(9)

#STRING MANUPULATION:------
string <-"Hello"
string2 <-"world"
paste(string,string2)
tolower(string) # to convert into lowercase
toupper(string) # to convert into uppercase
nchar(string)#check number of characters in a particular string.
substring(string,1,3) # gives first 3 characters from the string i.e hel

#DATAFRAME:----
names <-c("olivia","otis","eve")
color <-factor(c("red","black","green"))
df <- data.frame(names,color)

students <-c("olivia","otis","eve")
rollno <-factor(c("M200","M201","M201"))
df1 <- data.frame(students,rollno)

cbind(df,df1)
rm(df)
merge(df,df1,by.x="names",by.y="students")

