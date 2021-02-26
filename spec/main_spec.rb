require ('rspec')
require ('main')

describe(Word_Check) do
  describe('#anagram') do
    it ('will take 2 arguments convert them to an array with 2 arrays and sort them alphabetically') do
    words = Word_Check.new()
    expect(words.anagram('time', 'mite')).to(eq('These are anagrams.'))
    end
    it ('will take 2 arguments see if they are anagrams') do
    words = Word_Check.new()
    expect(words.anagram('time', 'mite')).to(eq('These are anagrams.'))
    end
    it ('will take 2 arguments see if they are anagrams') do
    words = Word_Check.new()
    expect(words.anagram('lime', 'mite')).to(eq('These are not anagrams. They have 3 letters that match: e i m'))
    end
    it ('will take 2 arguments see if they are anagrams even if case is different') do
    words = Word_Check.new()
    expect(words.anagram('TimE', 'MItE')).to(eq('These are anagrams.'))
    end
    it ('will take 2 arguments see if they are anagrams for both words and phrases') do
    words = Word_Check.new()
    expect(words.anagram('TimE to go up!!!', 'MItE go pout...')).to(eq('These are anagrams.'))
    end

    describe('#real_words') do
      it ('will take 2 arguments see if they are anagrams and check to make sure they are not consonant chains') do
      words = Word_Check.new()
      expect(words.real_words('tbBmn', 'tbBmn')).to(eq(false))
      end
      it ('will take 2 arguments see if they are anagrams and check to make sure they are not consonant chains or have numbers') do
      words = Word_Check.new()
      expect(words.real_words('toad9', 'toad')).to(eq(false))
      end
    end

    describe('#antigram') do
      it ('will take 2 arguments see if they are antigrams') do
      words = Word_Check.new()
      expect(words.antigram('wolf', 'rabbit')).to(eq(true))
      end
    end
  end
end