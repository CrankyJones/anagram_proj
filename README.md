# Anagram Checker

#### This checker will evaluate words and phrases to determine if they are anagrams, antigrams, or just 2 plain ol' words.

#### By Geof Rosenmund

## Technologies Used

* Ruby
* RSPEC
* Pry 
* Interactive Ruby (for occasional spot testing)

## Description

This checker will take two inputs, both words and phrases.  It check to make sure there is at least one vowel and no numbers in the words. If that test passes, it will strip punctuation and whitespace from the inputted string.  Next, it converts the string into an array of single letters. The checker then sorts these arrays alphabetically and then checks to see if the arrays are the same. If they are not anigrams, it calls an another method to determine if there are no letter matches. If there are a few matches, the checker will count the number of letter matches and then display those letters.

## Setup/Installation Requirements

* Clone repository from Github
* Navigate to the top level of the project directory
* To create the Gemfile.lock: $ bundle install
* To make the script executable: $ chmod +x script.rb
* To run the script: $ ./script.rb
* Follow the prompts in the terminal

## Known Bugs

* The handling of the inputs could use a little refactoring.


## **License**
[MIT](https://opensource.org/licenses/MIT)
Copyright (c) [2021] [Geof Rosenmund]

## **Contact Information**
Geof Rosenmund (geof.rosenmunds.email@gmail.com)