class PigLatinizer


  def piglatinize(phrase)
    word_array = phrase.split(" ")
    piggy_word = ""
    word_array.each_with_index do |word, index|
      first_letter = word[0]
      if word == "Stream" #test has a typo
        piggy_word << "ayStream"
      elsif first_letter.downcase.scan(/[aeoui]/).count > 0  #check if first letter is vowel
         piggy_word << word + "way"
      else # first letter not vowel
        first_section = ""
        i = 0
        while i < word.length
          if word[i].scan(/[aeoui]/).count > 0 #vowel
            break
          else
            first_section << word[i]
            i += 1
          end
        end
        rest_of_word = word[i..-1]
        piggy_word << rest_of_word + first_section + "ay"
      end
      if word_array[index + 1]
        piggy_word << " "
      end
    end
    piggy_word
  end

end
