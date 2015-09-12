class Book
	attr_reader :title

def title=(new_title)
	words = new_title.split(" ")
	special_words = %w{a an and in the of}
	words = [words[0].capitalize] + words[1..-1].map do |word|
		if special_words.include? word
			word
		else
			word.capitalize
		end
	end
	@title = words.join(" ")
end

end
