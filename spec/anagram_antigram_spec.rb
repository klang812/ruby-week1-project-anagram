require('rspec')
require('anagram_antigram')
require('pry')

describe('#anagram_antigram') do
  it("checks to see if 2 words are anagrams") do
    anagram = Anagram.new()
    expect(anagram.anagram_antigram("ruby bury")).to(eq("These words are anagrams."))
  end

  it("puts words into lower case to match") do
    anagram = Anagram.new()
    expect(anagram.anagram_antigram("Ruby Bury")).to(eq("These words are anagrams."))
  end

  it("takes multi word string and finds anagram") do
    anagram = Anagram.new()
    expect(anagram.anagram_antigram("Ruby bury")).to(eq("These words are anagrams."))
  end

  it("take words with no matching letters") do
    anagram = Anagram.new()
    expect(anagram.anagram_antigram("hi bye")).to(eq("These words have no letter matches and are antigrams!"))
  end

  it("take words and check for vowels") do
    anagram = Anagram.new()
    expect(anagram.anagram_antigram("thb bmkj")).to(eq("These words have no vowels!"))
  end
  
  it("remove punctuation and spaces") do
    anagram = Anagram.new()
    expect(anagram.anagram_antigram("ruby. bury")).to(eq("These words are anagrams."))
  end

end