def add(a,b)
	total = a + b
end

def subtract(a,b)
	total = a - b
end
def sum(arrNum)
	total = 0
	numNumbers = arrNum.length
	puts(numNumbers)
	for i in 0..numNumbers
		total = total + arrNum[i].to_i
	end
	return total
end
def multiply(*numb)
	total = 1
	numb.each{|number| total = total * number}
	return total
end
def power(a,b)
	total = a ** b
end
def factorial(numb)
	(1..numb).inject(:*) || 1
end

