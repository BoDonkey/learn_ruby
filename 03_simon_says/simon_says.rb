def echo(word)
	return word
end
def shout(word)
	return word.upcase
end
def repeat(word, numb = 2)
	string = word
	for i in 1..numb-1
		string = string + " " + word
	end
	return string
end
def start_of_word(word, numb)
	string = ""
	for i in 0..numb-1
		string = string + word[i]
	end
	return string
end
def first_word(string)
	wordArray = string.split
	return wordArray[0]
end
def titleize(title)
	special_words = %w(and in the of a an over)
  	formatted_title = []

    @title = title.split.each_with_index do |w,i|
      case 
      when i == 0
        formatted_title << w.capitalize

      when i > 0 && !special_words.include?(w)
        formatted_title << w.capitalize

      when i > 0 && special_words.include?(w)
        formatted_title << w
      end
    end

  @title = formatted_title.join(" ")
  
  end

