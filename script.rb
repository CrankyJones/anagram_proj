#!/usr/bin/env ruby
require_relative('lib/main.rb')
$stdout.sync = true
words = Word_Check.new()
puts 'Welcome to anagram checker!'
puts 'You will need to enter two words or phrases.'
puts 'Please enter the first word or phrase:'
word_one = gets.chomp
puts 'Please enter the second word or phrase:'
word_two = gets.chomp
words.anagram(word_one, word_two)
