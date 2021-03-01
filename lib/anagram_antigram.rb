class Anagram

  def anagram_antigram(phrase)
    word_list = phrase.split(' ')
    new_word_list = word_list.collect{|x| x.downcase.gsub(/\.|,|!|\s/,"").split('').sort.join}
    for word in new_word_list do
      letters = word.match(/[aeiou]/) 
      if letters.nil?
        return "These words have no vowels!"
        end
      if new_word_list.count(word) > 1
        return "These words are anagrams."
      else return "These words have no letter matches and are antigrams!"
      end
    end 
  end
end

words = ["ruby", "bury"]




