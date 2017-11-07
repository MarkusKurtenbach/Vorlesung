####Matrix
x <- matrix(c(4,7,3,8,9,2), nrow=2)
x[2,2]
x[,2]

numbers_1 <- rnorm(80,mean=0,sd=1)
mat_1 <- matrix(numbers_1,nrow=20,ncol=4)
mat_1
df_1 <- data.frame(mat_1)
names(df_1) <- c("var1","var2","var3","var4")
head(df_1)

####Vector
x <- seq(1,100,by=2.5)
x[5]
x[4:10]
x[length(x)]
x[length(x)]

x[-1]


idx <- c(1,4,6)
x[idx]
x[-idx]

x > 20
x <= 10
x >= 30
x[x<=10 | x>=30]

x[x<10 | x<30]

x2 <- numeric(length(x))
x2[x<=30] <- 1
x2[(x>30)&(x<70)] <- 2
x2[x<70] <- 3

library(car)
x2 <- recode(x,"0:30=1;30:70=2; else=3")
x2

summary(x)
sum(x)
cumsum(x)

rev(x) #revert order
sort(x,decreasing=TRUE) #revert order
sample(x,10) #sample 10 values out of x


test <- data.frame(A=c(1,2,3),B=c("aB1","aB2","aB3")) #dataframe mit 2 columns
test [,1] #Ausgabe von A
test$A #macht das Gleiche

df <- data.frame(plot="location_name_1", measure1=runif(100)*1000,measure2=round(runif(100)*100),value=rnorm(100,2,1),ID=rep(LETTERS,100))
df_2 <- data.frame(plot="location_name_2",measure1=runif(50)*100,measure2=round(runif(50)*10),value=rnorm(50),ID=rep(LETTERS,50))
df <- rbind(df,df_2)
df

df[df$value>3.0,]
df
df[df$value>3.2 | df$measure1>950,]
df[df$value>3.2&df$measure1>950,]
df$new_col <- df$measure1 * df$measure2
