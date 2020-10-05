def echo(str)
	str
end


def shout(str)
	str.upcase
end


def repeat(str, nb=2)
	((str+" ")*nb).strip
end


def start_of_word(str, nb)
	str.chars.first(nb).join
end


def first_word(str)
	str.split[0]
end


def titleize(str)
	little_words=["a", "and", "the", "or", "with", "for"]
	array=str.split
	new_array = [array[0].capitalize]

	for i in 1...array.size
		if little_words.include?array[i]
			new_array << array[i]
		else
			new_array << array[i].capitalize
		end
	end
	return new_array.join(" ")
end

