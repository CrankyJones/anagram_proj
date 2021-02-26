class Word_Check

    def anagram (word_one, word_two)
      if (real_words(word_one, word_two) == false)
        return 'Please input real words.'
      end
      first_word = word_one.gsub(/[\W_]/, '').downcase().split('').sort
      second_word = word_two.gsub(/[\W_]/, '').downcase().split('').sort
      if (first_word == second_word)
        'These are anagrams.'
      elsif (antigram(word_one, word_two) == true)
        'These are antigrams.'
      else
        not_grams = not_anagrams(word_one, word_two)
        "These are not anagrams. They have #{not_grams.length} letters that match: #{not_grams}"
      end
    end

    def real_words(word_one, word_two)
      first_word = word_one.downcase().split(' ')
      second_word = word_two.downcase().split(' ')
      first_word.each do |word|
        if ((!word.match?(/[aeiouy]/i) || word.match?(/[0-9]/i)))
          return false
        end
      end
      second_word.each do |word|
        if ((!word.match?(/[aeiouy]/i)) || (word.match?(/[0-9]/i)))
          return false
        end
      end
      true
    end

    def antigram (word_one, word_two)
      first_word = word_one.downcase().split('').sort
      second_word = word_two.downcase().split('').sort
      first_word.each do |lettera|
        second_word.each do |letterb|
          if (lettera == letterb)
            return false
          end        
        end
      end
      true
    end

    def not_anagrams(word_one, word_two)
      results_array = []
      new_array = []
      first_word = word_one.downcase().split('').sort
      second_word = word_two.downcase().split('').sort
      first_word.each do |lettera|
        second_word.each do |letterb|
          if (lettera == letterb)
            results_array.push(letterb) 
          end
        end
      end   
      new_array = (results_array.uniq)
    end

    def ascii_art()
      puts File.read("lib/ascii_art.txt")
    end
end