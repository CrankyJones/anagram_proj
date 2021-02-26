class Word_Check

    def anagram (word_one, word_two)
      first_word = word_one.split('').sort
      second_word = word_two.split('').sort
      if (first_word == second_word)
        'These are anagrams.'
      else
        'These are not anagrams.'
      end

    end
end