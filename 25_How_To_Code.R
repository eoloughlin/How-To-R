#
#        Author: Dr Eugene O'Loughlin
#   Video Title: How To... Read HTML Tables from the Internet in R
#  Video Number: #25
#
# Install and load necessary packages
install.packages("rvest")
library(rvest)
#
# First Example
# URL for List of Highest Grossing Films in USA and Canada (Wikipedia)
# https://en.wikipedia.org/wiki/List_of_highest-grossing_films_in_the_United_States_and_Canada
#
filmsURL <- read_html("https://en.wikipedia.org/wiki/List_of_highest-grossing_films_in_the_United_States_and_Canada")
filmsURL
#
allTables <- filmsURL %>% html_table(fill = TRUE)
#
# Read "Not adjusted for inflation" table
table1 <- allTables[[1]]
head(table1)
#
# Read "Adjusted for ticket-price inflation" table
table2 <- allTables[[2]]
head(table2)
#
# Second example: 2019 San Francisco Giants Statistics
dataSFG <- read_html("https://www.baseball-reference.com/teams/SFG/2019.shtml")
dataSFG
#
SFGTables <- dataSFG %>% html_table(fill = TRUE)
#
# Read "Team Batting" table
teamBatting <- SFGTables[[1]]
head(teamBatting)
#
# Read "Team Pitching" table
teamPitching <- allTables[[2]]
head(teamPitching)
