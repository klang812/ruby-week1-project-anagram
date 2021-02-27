class Anagram

  def anagram_antigram(phrase)
    word_list = phrase.split(' ')
    new_word_list = word_list.collect{|x| x.downcase.split('').sort.join}
    
    for word in new_word_list do
      letters = word.match(/[aeiou]/) 
      if new_word_list.count(word) > 1 
        if letters == true
        end
      return true
      end
    end 
    return false
    # return "These words have no letter matches and are antigrams!"
  end
    
end

words = ["ruby", "bury"]




