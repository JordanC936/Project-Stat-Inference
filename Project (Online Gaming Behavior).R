#Plotting histogram for PlayTimeHours/AvgSessions (Qualitative)

hist(gaming$PlayTimeHours, 
     
     main = "Hours of Play", 
     
     xlab = "Play Time Hours",  
     
     ylab = "Number of Playtime Hours")


hist(gaming$AvgSessionDurationMinutes, 
     
     main = "Sessions Durations", 
     
     xlab = "Average Sessions Durations", 
     
     ylab = "Number of Sessions Duration")

#Plotting barplot for GameGenre/GameDifficulty (Quantitative)

barplot(table(gaming$GameGenre), 
        
        main = "Game Genre Among Players", 
        
        xlab = "Genre of the Game", 
        
        ylab = "Percentage")

barplot(table(gaming$GameDifficulty), 
              
              main = "Game Difficulty Among Players", 
              
              xlab = "Game Difficulty", 
              
              ylab = "Percentage")



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
     
     ylab = "Number of Sessions Duration")
