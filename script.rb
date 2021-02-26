#!/usr/bin/env ruby
require_relative('lib/main.rb')
$stdout.sync = true
words = Word_Check.new()
x = 'y'
puts 'Welcome to anagram checker!'
puts 'You will need to enter two words or phrases.'
while (x == 'y') do
  puts 'Please enter the first word or phrase:'
  word_one = gets.chomp
  puts 'Please enter the second word or phrase:'
  word_two = gets.chomp
  result = words.anagram(word_one, word_two)
  puts result
  puts 'Try again? Y/N?'
  x = gets.chomp.downcase()
end
