#
#        Author: Dr Eugene O'Loughlin
#   Video Title: How To... Select Vector Elements by Name in R
#  Video Number: #13
#
# Create two vectors (FIFA World Cup 21st Century)
years <- c(2002, 2006, 2010, 2014, 2018)
names(years) <- c("Brazil", "Italy", "Spain", "Germany", "France")
print(years)
#
years[1]          # Select by number
#
years["Brazil"]   # What year did Brazil win?
years["France"]   # What year did France win?
#
# Select two or more elements by name
years[c("Italy", "Germany")]
#
# Names not listed
years["Ireland"]  # What year did Ireland win? (returns NA)
