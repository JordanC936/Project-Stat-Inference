#Plotting histogram for PlayTimeHours/AvgSessions (Quantitative)

hist(gaming$PlayTimeHours, 
     
     main = "Hours of Play", 
     
     xlab = "Play Time Hours",  
     
     ylab = "Number of Play Time Hours")


hist(gaming$AvgSessionDurationMinutes, 
     
     main = "Sessions Durations", 
     
     xlab = "Average Sessions Durations", 
     
     ylab = "Number of Sessions Durations")

#Plotting barplot for GameGenre/GameDifficulty (Qualitative)

barplot(table(gaming$GameGenre), 
        
        main = "Game Genre Among Players", 
        
        xlab = "Genre of the Game", 
        
        ylab = "Player Prefernce")

barplot(table(gaming$GameDifficulty), 
              
              main = "Game Difficulty Among Players", 
              
              xlab = "Game Difficulty", 
              
              ylab = "Players by Difficulty")



#There are no missing data, but I want customize the scale of the x- axis


#Customizing scale of Play Time of Hours, use range()

range(gaming$PlayTimeHours)

hist(gaming$PlayTimeHours, xaxp = c(1.146866e-04, 2.399959e+01, 14), 
         
         main = "Hours of Play", 
         
         xlab = "Play Time Hours",  
         
         ylab = "Number of Playtime Hours")


#Customizing scale of AvgSessions, use range()

range(gaming$AvgSessionDurationMinutes)

hist(gaming$AvgSessionDurationMinutes, xaxp = c(10, 179, 17), 
     
     main = "Sessions Durations", 
     
     xlab = "Average Sessions Durations", 
     
     ylab = "Number of Session Durations")

#Computing mean/median/standard deviation/variance

#PlayTimeHours (Quantitative)

mean(gaming$PlayTimeHours)

median(gaming$PlayTimeHours)

sd(gaming$PlayTimeHours)

var(gaming$PlayTimeHours)

#AvgSessionDurationMins (Quantitative)

mean(gaming$AvgSessionDurationMinutes)

median(gaming$AvgSessionDurationMinutes)

sd(gaming$AvgSessionDurationMinutes)

var(gaming$AvgSessionDurationMinutes)

#Plotting using scatterplot for data 

plot(gaming$PlayTimeHours, gaming$AvgSessionDurationMinutes, 
     
     main = "Relationship between Play Time Hours and Average Session Durations", 
     
     xlab = "Play Time Hours", 
     
     ylab = "Average Session Durations")

#Computing Correlation

cor(gaming$PlayTimeHours, gaming$AvgSessionDurationMinutes)

#Computing the 95% confidence interval mean (2 Quantitative column)

#Computing Play Time Hours

xbar = mean(gaming$PlayTimeHours)
xbar

s = sd(gaming$PlayTimeHours)
s

n = 40034

t = -qt(.025, n -1)
t 

#Calculating lower/upper bound

L = xbar - t*s/sqrt(n) 
L 

U = xbar + t*s/sqrt(n) 
U 

#Computing AvgSessionDurationMinutes

xbar = mean(gaming$AvgSessionDurationMinutes)
xbar 

s = sd(gaming$AvgSessionDurationMinutes)
s

n = 40034

t = -qt(.025 , n -1)
t

#Calculating lower/upper bound

L = xbar - t*s/sqrt(n) 
L

U = xbar + t*s/sqrt(n)
U

#Linear Regression (Simple)

#AvgSessionDurtions as response/PlaytimeHours as predictor

game.lm = lm(gaming$AvgSessionDurationMinutes ~ gaming$PlayTimeHours)
game.lm

#Scatterplot of Linear Model

plot(gaming$AvgSessionDurationMinutes , gaming$AvgSessionDurationMinutes, 
     
     main = "Play Time Hours vs Avg Session Durations", 
     
     xlab = "Playtime Hours Measurements" , 
     
     ylab = "Avg Session Durations Measurements")

#Suppose we want to predict the amount of hours at 70, 110, and 149

predict(game.lm, newdata = data.frame(PlayTimeHours = c(70, 110, 149)))

#Histogram of the Residual (Linear Model)

hist(resid(game.lm))

#Square computation of the Linear Model/Regression 

cor(gaming$PlayTimeHours, gaming$AvgSessionDurationMinutes)

cor(gaming$PlayTimeHours , gaming$AvgSessionDurationMinutes)^2

#Recomputing linear model for gaming 

game.lm = lm(gaming$AvgSessionDurationMinutes ~ gaming$PlayTimeHours)
game.lm

#Summary of model 

summary((game.lm))

summary(game.lm)$r.squared

#Hypothesis Testing (Null/Alternative)

#Creating 2 hypothesis for AvgSessionDurations 

#Null hypothesis - H0: mu = 30
#Alternative - H1: mu > 30

#Setting up t - test

t_test = t.test(gaming$AvgSessionDurationMinutes, mu = 30, alternative = "greater")
t_test

#Now what if we wanna know the mean session across genders. 

#Null hypothesis - H0: mu_male = mu_female
#Alternative - H1: mu_male ≠ mu_female

#Setting up t - test 

t_test = t.test(gaming$AvgSessionDurationMinutes ~ gaming$Gender)
t_test