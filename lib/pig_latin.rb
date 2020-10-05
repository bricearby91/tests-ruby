def process(word)
	
	if ! "aeiouy".match?(word[0])
		new_word =""
		sub_string = word[0]
		offset=1

		if ! "aeiouy".match?(word[1]) or (word[0]=="q" and word[1]=="u")
			sub_string += word[1]
			offset=2	
		
			if ! "aeiouy".match?(word[2]) or (word[1]=="q" and word[2]=="u")
				sub_string += word[2]
				offset=3
			end
		end

	for i in offset...word.length
		new_word += word[i]
	end

	new_word += sub_string
	new_word += "ay"

	return new_word
else
	return word+"ay"
	end
end


def translate(word)
	
	if word.split.count > 1	
		array=[]
		word.split.each do |mot|
			array << process(mot)
		end
	return array.join(" ")

	else
		return process(word)
end	
end		

def translate_adv(word)
	if word[0].match?(/[A-Z]/)
		word=word.downcase
		word=process(word)
		word=word.capitalize
	else 
		return process(word)
	end
	return word
end

puts translate_adv("Thespian")