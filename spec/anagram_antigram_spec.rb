require('rspec')
require('anagram_antigram')
require('pry')

describe('#anagram_antigram') do
  it("checks to see if 2 words are anagrams") do
    anagram = Anagram.new()
    expect(anagram.two_words("ruby bury")).to(eq("These words are anagrams."))
  end

  it("puts words into lower case to match") do
    anagram = Anagram.new()
    expect(anagram.lower_case("Ruby Bury")).to(eq("These words are anagrams."))
  end

  it("take words with no matching letters") do
    anagram = Anagram.new()
    expect(anagram.antigram("hi bye")).to(eq("These words are antigrams!"))
  end

  it("take words and check for vowels") do
    anagram = Anagram.new()
    expect(anagram.vowels("thb bmkj")).to(eq("These words have no vowels!"))
  end
  
  it("remove punctuation and spaces") do
    anagram = Anagram.new()
    expect(anagram.no_punctuation("ruby. bury")).to(eq("These words are anagrams."))
  end

  it("checks to see if 2 strings contain anagrams") do
    anagram = Anagram.new()
    expect(anagram.sentences("I love lucy. ilovelucy")).to(eq("These words are anagrams."))
  end
end