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
  end
end