####################################Matrix
x <- matrix(c(4,7,3,8,9,2), nrow=2)
x[2,2]
x[,2]

numbers_1 <- rnorm(80,mean=0,sd=1)
mat_1 <- matrix(numbers_1,nrow=20,ncol=4)
mat_1
df_1 <- data.frame(mat_1)
names(df_1) <- c("var1","var2","var3","var4")
head(df_1)

####################################Vector
x <- seq(1,100,by=2.5) #create a sequence from 1 to 100 by steps 2.5
x
x[5] #query 5th position
x[4:10] #extract 4th to 10th position
x[length(x)] #length of x and query this position
x[length(x)-1] #length of x and query this minus one position (vorletzte Position)

x[-1] #extract everything but the first position


idx <- c(1,4,6) #a vector with three numbers
x[idx] #query x based on idx numbers 
x[-idx] #omit x queery of these three numbers

###queryy values of data (TRUE/FALSE)
x > 20 #über 20 = TRUE, darunter false
(x<=10 | x>=30) #below or equal 10 OR above or equal 30

###query values of data and receive the actual values
x[x<10 | x<30] #provice all data below 10 or above 30

###Change Values
x2 <- numeric(length(x))
x2[x<=30] <- 1
x2[(x>30)&(x<70)] <- 2
x2[x<70] <- 3
x2

library(car) #Alternative
x2 <- recode(x,"0:30=1;30:70=2; else=3")
x2

summary(x) #general summary stats 
sum(x) #general sum
cumsum(x) #cummulative sum

rev(x) #revert order
sort(x,decreasing=TRUE) #revert order
sample(x,10) #sample 10 values out of x

######################Data Frame
test <- data.frame(A=c(1,2,3),B=c("aB1","aB2","aB3")) #dataframe mit 2 columns
test [,1] #Ausgabe von A
test$A #macht das Gleiche
test

df <- data.frame(plot="location_name_1", measure1=runif(100)*1000,measure2=round(runif(100)*100),value=rnorm(100,2,1),ID=rep(LETTERS,100))
df_2 <- data.frame(plot="location_name_2",measure1=runif(50)*100,measure2=round(runif(50)*10),value=rnorm(50),ID=rep(LETTERS,50))
df <- rbind(df,df_2)
df
summary(df)
str(df)
mode(df)
head(df) 
df[,c("plot","measure1","measure2")] #plot the whole data fram but just for plot,measure1 and 2

df[66:115,c("plot","measure1","measure2")] #plot just for line 566 to 570 for plot and measure 1 and 2

#################Index the germany precipitation data###############
#How to just extract the value of July
prec_avg[7]
