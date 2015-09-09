def translate(*word)
	wordArray = word.split(' ')
	numbWords = wordArray.length
	for i in 0..numbWords-1
		theWord = wordArray[i]
		if theWord[0] ==  