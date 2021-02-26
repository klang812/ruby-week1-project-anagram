require('rspec')
require('anagram_antigram')
require('pry')

describe('#anagram_antigram') do
  it("checks to see if 2 words are anagrams") do
    anagram = Anagram.new()
    expect(anagram.anagram_antigram("ruby bury")).to(eq(true))
  end

  it("puts words into lower case to match") do
    anagram = Anagram.new()
    expect(anagram.anagram_antigram("Ruby Bury")).to(eq(true))
  end

  it("takes multi word string and finds anagram") do
    anagram = Anagram.new()
    expect(anagram.anagram_antigram("Ruby bury")).to(eq(true))
  end

  it("take words with no matching letters") do
    anagram = Anagram.new()
    expect(anagram.anagram_antigram("hi" "bye")).to(eq("These words have no letter matches and are antigrams!"))
  end
end