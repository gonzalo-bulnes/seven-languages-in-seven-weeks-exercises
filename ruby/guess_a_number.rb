#!/usr/bin/ruby

# Bonus problem: If you’re feeling the need for a little more, write
# a program that picks a random number. Let a player guess the
# number, telling the player whether the guess is too low or too high.
# (Hint: rand(10) will generate a random number from 0 to 9, and
# gets will read a string from the keyboard that you can translate to
# an integer.)

number_to_guess = rand(10)
puts "Can you find the secret number?\nHint: the number is an integer in the 0..10 range.\n\nYour guess:"

# See http://ruby-doc.org/core-2.0/String.html#method-i-chomp
guess = gets.to_i


if guess > number_to_guess
  result = "Too high! The number to guess was #{number_to_guess}."
elsif guess == number_to_guess
  result = "Congratulations!"
else
  result = "Too low! The number to guess was #{number_to_guess}."
end

puts result
