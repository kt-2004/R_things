#--> DATA SET 
read.csv("D:/coffee_sales_dataset.csv") -> coffee
View(coffee)

#--> DATA PREPROCESSING 

#-> number of rows and columns
nrow(coffee)    #730
ncol(coffee)    #11

#-> total values of paticular category
table(coffee$Product)
#------Answer-----
# Brazilian  Colombian Costa Rica  Ethiopian  Guatemala 
#        146        152        165        128        139

table(coffee$City)
#------Answer-----
#Abha Buraidah   Dammam     Hail   Jeddah   Khobar    Mecca   Medina   Riyadh    Tabuk 
#     66       69       72       87       77       73       77       71       79       59

table(coffee$Unit.Price)
#------Answer-----
#30  35  40  45 
#146 304 152 128 

#-> all colnames or a particular col
colnames(coffee)
#------Answer-----
# [1] "Date"            "Customer_ID"     "City"            "Category"        "Product"         "Unit.Price"     
# [7] "Quantity"        "Sales.Amount"    "Used_Discount"   "Discount_Amount" "Final.Sales" 

colnames(coffee) [colnames(coffee) == 'City']   #[1] bcs only one column exists whose name is City.

#min-max
min(coffee$Unit.Price)  #30
max(coffee$Sales.Amount)   #2205

#Missing values check
is.na(coffee$Unit.Price)    #0
sum(is.na(coffee$Used_Discount))    #0

#Rename columns
colnames(coffee) [colnames(coffee) == 'Unit.Price'] <- "Unit_price"
colnames(coffee) [colnames(coffee) == 'Sales.Amount'] <- "Sales_amt"
colnames(coffee) [colnames(coffee) == 'Final.Sales'] <- "Final_sales"
colnames(coffee) [colnames(coffee) == 'Product'] <- "Coffee_name"

#Filtering DATA MANIPULATION things...

#install.packages(dplyr)
library(dplyr)
coffee %>% filter(coffee$Coffee_name=="Costa Rica") -> CostaRica
View(CostaRica)
coffee %>% filter(coffee$Coffee_name=="Ethiopian") -> Ethiopian
View(Ethiopian)

min(CostaRica$City) #Abha
max(CostaRica$City) #Tabuk

mean(Ethiopian$Final_sales)
mean(Ethiopian$Sales_amt)

#--> DATA VISUALIAZTION

#1.HISTOGRAM
hist(coffee$Final_sales, col="turquoise",xlab="Final sales")

#HISTOGRAM USING GGPLOT2 LIBRARY
ggplot(data=coffee,aes(x=Final_sales)) +geom_histogram()
ggplot(data=coffee,aes(x=Quantity)) +geom_histogram(fill="red")

#2.SCATTERPLOT
library(scatterplot3d)
scatterplot3d(Sales_amt,Final_sales, pch=16, highlight.3d=TRUE,type="p", main="3D plot of Sales amt and final sales")
scatterplot3d(Sales_amt,Final_sales, pch=16, highlight.3d=TRUE,type="h", main="3D plot of Sales amt and final sales")

#3.BARPLOT
barplot(table(coffee$City), main="City wise Sales",xlab="City Names")
barplot(table(coffee$Coffee_names),
 main="Product wise Sales",
 xlab="Product Names",
 col=c("darkblue","red"),
 legend = rownames(table(coffee$Coffee_name)))

#BARPLOT USING GGPLOT2 LIBRARY
ggplot(data=coffee,aes(x=City,fill=as.factor(City))) +geom_bar()

ggplot(data=CostaRica,aes(x=Final_sales)) +geom_bar(fill="coral")
ggplot(data=CostaRica,aes(x=Sales_amt)) +geom_bar(fill="turquoise")

ggplot(data=Ethiopian,aes(x=Final_sales,fill=as.factor(Final_sales))) +geom_bar()

#4.PIECHART
slices <- table(coffee$Coffee_names)
lbls <- paste(names(slices), "\n", slices, sep="")
pie(slices, labels = lbls,main="Pie Chart of Coffee sales", col=rainbow(length(lbls)))

#3D Exploded Pie Chart
library(plotrix)
slices <- table(coffee$Coffee_names)
lbls <- paste(names(slices), "\n", slices, sep="")
pie3D(slices,labels=lbls,explode=0.1, main="Pie Chart of Countries ")

#5.BOXPLOT
boxplot(Sales_amt, data=coffee, notch=TRUE,col=(c("gold","darkgreen")),main="Final sales Box plot", xlab="Final sales")
