\question 1:
  No it doesnt make sense to construct a confidence interval with this data as the sample size, n, should be sufficiently large that there are at least 15 observations for both sides of the argument. In this problem there are 38 observations where there was no veto, but only 2 that were vetoed.
question 2:
a:
  mean for population= 5.2
stdev for population= 3
skewed to the right 
b:
  mean=4.6
stdev=3.2
the data is skewed as it doesn't match the population parameter.
c:
mean=4.6 stdev=3.2
this is the sampling distribution of the sample mean. Meaning, we are looking at the distribution of the sample mean derived from a sample (n=36) of the original distribution.
d:
pnorm(5.7, mean=4.6, sd=3.2, lower.tail=TRUE)-pnorm(4.7, mean=4.6, sd=3.2, lower.tail=TRUE)
.122
e:
randomsample <-rnorm(100, mean=5.7, sd=3.2)
pnorm(randomsample, mean=5.7, sd=3.2)-pnorm(randomsample, mean=4.7, sd=3.2)
f:
no because it is within the standard deviation.

question 3:
a:
n=1294, z=1.96, mean=4.23, sd=1.39
4.23+1.96(1.39/sqrt(1294)) = 4.23+.0757
4.23-1.96(1.39/sqrt(1294)) = 4.23-.0757
b:
This means that we can be 95 percent confident that the population mean falls between the values of 4.1543 and 4.3057

c:
(i) the confidence interval would be narrower with a 90 percent confidence interval. This is because as the confidence level decreases (95 percent to 90 percent), the width of the confidence level decreases.
(ii) The width would increase because we are only sampling the "strong democrats" which means that our n is decreasing. Since n is in the denominator, as it decreases, the width increases.

question 4:
a:
pnorm(57.75, mean=50, sd=6)
.901
b:
pnorm(50.45, mean=50, sd=6, lower.tail=FALSE)
.470
c:
pnorm(59.4, mean=50, sd=6, lower.tail=TRUE)-pnorm(52.4, mean=50, sd=6, lower.tail=TRUE)
.285

Question 5:
set.seed(12345)
salaries <- rnorm(n=10000, mean=40000, sd=15000)
density(salaries)
plot(density(salaries), xlab="salary amount", main="Denisty plot of salaries")


Quesion 6:
x<- seq(-10, 10, length=100)
normal.dist<- dnorm(x,0,sqrt(.4))
plot(normal.dist,type="l", lty=1)

B:
normal.dist2<- dnorm(x,0,sqrt(3))
plot(normal.dist2,type="l", lty=1)

C:
normal.dist3<- dnorm(x,3,sqrt(3))
plot(normal.dist3,type="l", lty=1)

d:
normal.dist4<- dnorm(x,3,sqrt(.4))
plot(normal.dist4,type="l", lty=1)

e:
normal.dist5<- dnorm(x,-2,sqrt(5))
plot(normal.dist5,type="l",lty=1)

f:
normal.dist6<- dnorm(x,-2,sqrt(.25))
plot(normal.dist6,type="l",lty=1)

Question 7:
a:
hist(drugcoverage$drugsmedia, xlab="months", ylab="frequency", main = "monthly count of drug-related charges")

b:
boxplot(drugcoverage$drugsmedia, xlab="drugs in media", ylab="frequency" ,main="boxplot of drugs in media")
boxplot(drugcoverage$approval, ylab="frequency", xlab="approval rating", main="presidental approval")
The approval rating is a lot higher than the amount of drug-related stories. Also, the variability in approval rating is a lot higher than the variability in drug-related stories.

c:
plot(x=drugcoverage$unemploy, y=drugcoverage$drugsmedia, main = "First scatterplot", xlab = "unemployment", ylab= "drug-related stories")
plot(x=drugcoverage$approval, y=drugcoverage$drugsmedia, main = "second scatterplot", xlab="approval rating", ylab="drug-related stories")
As approval rating increases, the number of drug-related stories also increases.
As unemployment decreases, the number of drug-related stories increases.
This tells us that the number of drug-related stories differs based on both the approval rating and the unemployment rate.

d:
plot(x=drugcoverage$Year, y=drugcoverage$drugsmedia, ylab="drug related stories", xlab="month", main="number of drug-related stories over time")
plot(x=drugcoverage$Year, y=drugcoverage$approval, ylab="approval rating", xlab="month", main="approval rating over time")
the approval rating is varys a lot over the course of a presidents tenure. While the number of drug related stories has some outliers but mainly stays below 50 stories per month.

Question 8:
a:
read.csv("wnominatehouse.csv")
wnominate <- read.csv("wnominatehouse.csv")

> democrats107 <- subset(wnominate,congress==107 & party==100)
> democrats88 <- subset(wnominate, congress==88 & party==100)
> republicans88 <- subset(wnominate, congress==88 & party==200)
> republicans107 <- subset(wnominate, congress==107 & party==200)

b:
median(democrats88$wnominate, na.rm=TRUE)
median(democrats107$wnominate, na.rm=TRUE)
The median increased (away from 0), meaning that the middle democrat became more polarized.

c:
median(republicans88$wnominate, na.rm=TRUE)
median(republicans107$wnominate, na.rm=TRUE)
the median increased, meaning that the midde republican became more polarized.

d:
sd(democrats88$wnominate)
sd(democrats107$wnominate)
The stdev decreased from 88 to 107. This means that democrats began voting more similarily. 

e:
sd(republicans88$wnominate)
sd(republicans107$wnominate)
The stdev decreased from 88 to 107. This means that republicans began voting more similarly.

f:
hist(republicans88$wnominate, xlab = "wnominate", main="88th congress histogram", col="red", xlim=c(-1,1))
hist(democrats88$wnominate, xlab="wnominate", main="88th congress histogram", col="blue", add=T)

g:
hist(republicans107$wnominate, xlab="wnominate", main="107th congress histogram", col="red",xlim=c(-1,1))
 hist(democrats107$wnominate, xlab="wnominate", main="107th congress histogram", col="blue", add=T)

h:
The 88th congress was much more bipartisan. There is a huge polarization of the parties between the 88th and 107th congress.

polarization increased. Both parties responsible.

I'm a bit confused on the question, however, I'll try to answer it as best as I can. In the 88th congress some democrats voted republican on issues and vice versa. In the 107th congress we barely see that.









