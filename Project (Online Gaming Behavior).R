#Plotting histogram for PlayTimeHours/AvgSessions (Qualitative)

hist(gaming$PlayTimeHours, 
     
     main = "Hours of Play", 
     
     xlab = "Play Time Hours",  
     
     ylab = "Number of Playtime Hours")


hist(gaming$AvgSessionDurationMinutes, 
     
     main = "Sessions Durations", 
     
     xlab = "Average Sessions Durations", 
     
     ylab = "NUmber of Sessions Duration")

#Plotting barplot for GameGenre/GameDifficulty (Quantitative)

barplot(table(gaming$GameGenre), 
        
        main = "Game Genre Among Players", 
        
        xlab = "Genre of the Game", 
        
        ylab = "Percentage")

barplot(table(gaming$GameDifficulty), 
              
              main = "Game Difficulty Among Players", 
              
              xlab = "Game Difficulty", 
              
              ylab = "Percentage")



        