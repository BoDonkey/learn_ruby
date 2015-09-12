def translate(phrase)

theVowels = %w(a e i o u)	
words = phrase.split(' ')
	words = words.map do |word|
	
		case
		when theVowels.include?(word[0])
			parts = [word[0], word.slice(1,word.length-1)]
		when !theVowels.include?(word[0]) && theVowels.include?(word[1]) && word[1] != "u"
			parts = [word.slice(1,word.length-1), word[0, 1]]
			puts "first consanant rule"
		when word[0] == "q"
			parts = [word.slice(2,word.length-2), word[0, 2]]
		when !theVowels.include?(word[0]) && !theVowels.include?(word[1]) && word[2] == "u"
			parts = [word.slice(3,word.length-3), word[0..2]]
		when !theVowels.include?(word[0]) && !theVowels.include?(word[1]) && theVowels.include?(word[2])
			parts = [word.slice(2,word.length-2), word[0..1]]
		when !theVowels.include?(word[0]) && !theVowels.include?(word[1]) && !theVowels.include?(word[2])
			parts = [word.slice(3,word.length-3), word[0..2]]
		end
		parts[0] + parts[1] + "ay"
	end
	words.join(' ')
end



