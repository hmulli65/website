library(Lahman)
library(sqldf)

query<-"SELECT teamID, playerID, yearID, HR FROM Batting 
WHERE teamID='NYA' and HR>=40"
sqldf(query)

# ---------------------------------------------------

query<-"SELECT teamID, playerID, yearID, HR, SO FROM Batting
WHERE HR>40 and SO<60"
sqldf(query)

# ---------------------------------------------------

query<-"SELECT teamID, playerID, yearID, HR FROM Batting
WHERE teamID='PHI' and HR>30 and yearID>=1970 and yearID<=1979"
sqldf(query)