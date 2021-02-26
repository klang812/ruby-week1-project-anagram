class Anagram

  # def initialize
  #   @word_one = word_one
  #   @word_two = word_two
  # end

  def anagram_antigram(word1, word2)
    word_one = word1.split('').sort
    word_two = word2.split('').sort
    word_one.include?(word_two) 
      
    
  
end
end

words = ["ruby", "bury"]




#new_word = word.include?.join
    # if word.match?(words) do
    #   true
    
    # end 