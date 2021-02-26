class Anagram

  # def initialize
  #   @words = words
    
  # end

  def anagram_antigram(word1, word2)
    word_one = word1.split('').sort.join
    word_two = word2.split('').sort.join
    if word_one == word_two 
      true
    else
      false
    end
    
      
    
  
end
end

words = ["ruby", "bury"]




#new_word = word.include?.join
    # if word.match?(words) do
    #   true
    
    # end 