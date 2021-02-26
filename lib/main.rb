class Word_Check

    def anagram (word_one, word_two)
      real_words(word_one, word_two)
      first_word = word_one.downcase().split('').sort
      second_word = word_two.downcase().split('').sort
      if (first_word == second_word)
        'These are anagrams.'
      # elsif (antigram(word_one, word_two))
      #   'These are antigrams.'
      else
        'These are not anagrams.'
      end
    end

    def real_words(word_one, word_two)
      if (!word_one.match?(/[aeiouy]/i) || !word_two.match?(/[aeiouy]/i))
        'Please input real words.'
      end
    end

    def antigram (word_one, word_two)
      counter = 0
      first_word = word_one.downcase().split('').sort
      second_word = word_two.downcase().split('').sort
      # first_word.each do |letter|
      #   second_word.each do |letter|
      #     if (first_word[counter] == second_word[counter])
      #       puts first_word[counter]
      #       puts second_word[counter]
      #     else
            'These are antigrams.'
      #     end
      #   end
      # end
    end

end