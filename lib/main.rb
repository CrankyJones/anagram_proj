class Word_Check

    def anagram (word_one, word_two)
      real_words(word_one, word_two)
      first_word = word_one.downcase().split('').sort
      second_word = word_two.downcase().split('').sort
      if (first_word == second_word)
        'These are anagrams.'
      else
        'These are not anagrams.'
      end
    end

    def real_words(word_one, word_two)
      if (!word_one.match?(/[aeiouy]/i) || !word_two.match?(/[aeiouy]/i))
        return 'Please input real words.'
      end
    end
end