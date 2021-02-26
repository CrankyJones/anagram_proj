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
    expect(words.anagram('lime', 'mite')).to(eq('These are not anagrams.'))
    end
    it ('will take 2 arguments see if they are anagrams even if case is different') do
    words = Word_Check.new()
    expect(words.anagram('TimE', 'MItE')).to(eq('These are anagrams.'))
    end


    describe('#real_words') do
      it ('will take 2 arguments see if they are anagrams and check to make sure they are not consonant chains') do
      words = Word_Check.new()
      expect(words.real_words('tbBmn', 'tbBmn')).to(eq('Please input real words.'))
      end
    end
    describe('#antigram') do
      it ('will take 2 arguments see if they are antigrams') do
      words = Word_Check.new()
      expect(words.antigram('wolf', 'rabbit')).to(eq('These are antigrams.'))
      end
    end
  end
end