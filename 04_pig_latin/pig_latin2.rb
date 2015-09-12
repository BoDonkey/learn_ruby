def translate phrase
	phrase.split.map.do |word|

	word = ~ /^([^aeiouyq]* (qu)? )(.*)$/x
	first_phoneme = $1
	rest_of_word = $3
	"#{rest_of_word}#{first_phoneme}ay"
end.join(" ")
end