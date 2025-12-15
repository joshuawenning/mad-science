# Add two strings together that, when concatenated, return your first and last name as your full name in one string.
puts "Joshua " + "Wenning"

# Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the: 1) thousands place 2) hundreds place 3) tens place 4) ones place
number = 4321

thousands = number / 1000
hundreds = (number % 1000) / 100
tens = (number % 100) / 10
ones = 4321 % 10

puts thousands
puts hundreds
puts tens
puts ones

# Write a program that uses a hash to store a list of movie titles with the year they came out. Then use the puts command to make your program print out the year of each movie to the screen.
movies = { :my_neighbor_totoro => 1988, :spirited_away => 2001, :princess_mononoke => 1997, :howls_moving_castle => 2004 }

# puts movies.values

# Use the dates from the previous example and store them in an array. Then make your program output the same thing as exercise 3.
movie_dates = movies.values.to_a

puts movie_dates

# Write a program that calculates the squares of 3 float numbers of your choosing and outputs the result to the screen.

puts 16.3 ** 2
