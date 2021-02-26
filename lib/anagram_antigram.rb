class Anagram



  def anagram_antigram(phrase)
    word_list = phrase.split(' ')
    new_word_list = word_list.collect{|x| x.downcase.split('').sort.join}
    for word in new_word_list do
      if new_word_list.count(word) > 1
        puts true
      else
        puts false
      end
      
    end 
  end
end

words = ["ruby", "bury"]



