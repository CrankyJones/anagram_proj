class Word_Check

    def anagram (word_one, word_two)
      first_word = word_one.split('').sort
      second_word = word_two.split('').sort
      return [first_word, second_word]

    end

end