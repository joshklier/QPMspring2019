#1
pchisq(3.78, 2, lower.tail = FALSE)

#cant reject the null at alpha=.1 because our p value is .1510718
#the variables are statistically independent
#1d
#the standardized residuals show us how far awar each observed value is from the expectataion
#So, they can show that the variables are independent becuase values follow no trend
# between upper class and lower class
#2a
#Ho: pi=.302
#Ha: pi doesnt equal .302
(.042-.302)/(sqrt(.302*(1-.302)/30))
# -3.10
2*pnorm(3.10, lower.tail=FALSE)
# .0019
# meaning the signs affect vote share because we can reject the null. 
#2b
#Ho: pi=.302
#Ha: pi doesnt equal .302
(.042-.302)/(sqrt(.302*(1-.302)/76))
#-4.93
2*pnorm(4.93, lower.tail = FALSE)
#8.222e-07
#reject the null. Signs have an effect

#2c
#the constant term is the value at which the regression line crosses the y-axis
#so, the constant is the the proportion of votes that went to cuccinelli when there are no signs at all. 

#2d
#R^2 = .094, so yard signs impact voters very little compared to other factors.
#E.g. how you voted last election, how your parents vote, etc.


#3a
#Ho: #of repaired drinking water facilities under male leaders = # repaired drinking water facilities under female leaders
#Ha: #of repaired drinking water facilities under male leaders =/ # repaired drinking water facilities uner female leaders

#3b
x <- read.csv(url("https://raw.githubusercontent.com/kosukeimai/qss/master/PREDICTION/women.csv"))

model3b <- lm(water ~ reserved, data=x)
summary(model3b)

#3c
#if the seat is reserved for a woman, they are 9.25 times more likely to repair drinking water facilities.
#4
install.packages("car")
library("car")
data(Prestige)
help(Prestige)
Prestige$professional <- ifelse(Prestige$type =="prof", "1", "0")

#b
model4b <- lm(prestige ~ income+professional+ income:professional, data=Prestige)
summary(model4b)

#c
#Y=21.1422589 + .0031709*Income + 37.7812800*professional1 + -.0023257*income:professional1
#d
#A one unit increase in income (one dollar increase in income) leads to a .0031709 increase in prestige score controlling for the independent effects of X2 and X3
#e
#professional is an indictaor variable for having a professional job.
#So, if you have a professional job, it leads to a 37.7812800 unit increase in your prestige score.
#f
.0031709*1000 
#3.1709
.0031709*2000 
#6.3418
6.3418-3.1709
#3.1709 unit increase in prestige score when you have a professional job and your income increases by 1000 dollars.
#g
Y=21.1422589 + .0031709*6000 + 37.7812800
# Y=77.94894, when job is professional
Y=21.1422589 + .0031709*6000
# Y= 40.16766
77.94894-40.16766
# the marginal effect of having a professional job when your income in $6000 is 37.78128 units in prestige score.
#5
library("faraway")
data("newhamp")
colnames(newhamp)

#a
model5aa <- lm(pObama ~ votesys, data=newhamp)
model5ab <- lm(pObama ~ votesys + povrate, data=newhamp)
model5ac <- lm(pObama ~ votesys + povrate + pci, data=newhamp)
model5ad <- lm(pObama ~ votesys + povrate + pci + Dean, data=newhamp)
model5ae <- lm(pObama ~ votesys + povrate + pci + Dean + white, data=newhamp)
model5af <- lm(pObama ~ Dean, data=newhamp)
summary(model5aa)
summary(model5ab)
summary(model5ac)
summary(model5ad)
summary(model5ae)
summary(model5af)

#b model 5 has the highest r^2

#6
#a
read.csv("incumbents_subset.csv")
y <- read.csv("incumbents_subset.csv")
model6a <- lm(voteshare ~ difflog, data = y)
summary(model6a)
plot(y$voteshare, y$difflog)
abline(model6a, col= "red")
residualmodel6a <- predict(model6a)
segments(y$difflog, y$voteshare, y$difflog, residualmodel6a)

#b
model6b <- lm(presvote ~ difflog, data = y)
plot(y$difflog, y$presvote)
abline(model6b, col="red")
summary(model6b)
residuals6b <- predict(model6b)
segments(y$difflog, y$presvote, y$difflog, residuals6b)

#c
model6c <- lm(voteshare ~ presvote, data=y)
plot(y$presvote,y$voteshare)
abline(model6c, col="red")
summary(model6c)
residuals6c <- predict(model6c)
segments(y$presvote, y$voteshare, y$presvote, residuals6c)

#d
part1 <- resid(model6a)
part2 <- resid(model6b)
model6d <- lm(part1 ~ part2)
summary(model6d)
plot(part1, part2)
abline(model6d, col="red")
prediction <- predict(model6d)

#e
model6e <- lm(voteshare ~ difflog + presvote, data=y)
summary(model6e)
predict6e <- predict(model6e)