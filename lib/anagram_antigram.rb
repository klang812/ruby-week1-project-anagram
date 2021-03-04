class Anagram
  
  def two_words(phrase)
    word_list = phrase.split(' ')
    new_word_list = word_list.collect{|x| x.downcase.gsub(/\.|,|!|\s/,"").split('').sort.join}
    for word in new_word_list do
      if new_word_list.count(word) > 1
        return "These words are anagrams."
      else
        return "These words are not antigrams!"
      end
    end
  end

  def lower_case(phrase)
    word_list = phrase.split(' ')
    new_word_list = word_list.collect{|x| x.downcase.split('').sort.join}
    for word in new_word_list do
      if new_word_list.count(word) > 1
        return "These words are anagrams."
      else
        return "These words are antigrams!"
      end
    end
  end

  def antigram(phrase)
    word_list = phrase.split(' ')
    new_word_list = word_list.collect{|x| x.downcase.split('').sort.join}
    for word in new_word_list do
      if new_word_list.count(word) > 1
        return "These words are anagrams."
      else
        return "These words are antigrams!"
      end
    end
  end

  def vowels(phrase)
    word_list = phrase.split(' ')
    for word in word_list do
      letters = word.match(/[aeiou]/)         
      if letters.nil?
        return "These words have no vowels!"
      end
    end
  end
  
  def no_punctuation(phrase)
    word_list = phrase.split(' ')
    new_word_list = word_list.collect{|x| x.downcase.gsub(/\.|,|!|\s/,"").split('').sort.join}
    for word in new_word_list do
      if new_word_list.count(word) > 1
        return "These words are anagrams."
      else
        return "These words are antigrams!"
      end
    end
  end

  def sentences(phrase)
    word_string = phrase.split(/\.|,|!|\?/)
    word_list = word_string.collect{|x| x.gsub(/\s/,"")}
    new_word_list = word_list.collect{|x| x.downcase.split('').sort.join}
    for word in new_word_list do
      if new_word_list.count(word) > 1
        return "These words are anagrams."
      else
        return "These words are antigrams!"
      end
    end
  end
end
  

  


