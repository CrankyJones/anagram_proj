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
      first_word.each do |lettera|
        second_word.each do |letterb|
          if (lettera == letterb)
            'huh?'
          else
            'These are antigrams.'
          end
        end
      end
    end

end