require('rspec')
require('anagram_antigram')
require('pry')

describe('#anagram_antigram') do
  it("checks to to see if 2 words are anagrams") do
    anagram = Anagram.new()
    expect(anagram.anagram_antigram("ruby", "bury")).to(eq(true))
  end

  
end