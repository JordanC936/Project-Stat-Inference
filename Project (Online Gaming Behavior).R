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