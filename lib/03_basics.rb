def who_is_bigger(a,b,c)
	
if [a,b,c].include?(nil)
       return "nil detected" 
else 
	case [a,b,c].max
	when a 
		return "a is bigger"
	when b
		return "b is bigger"
	when c
		return "c is bigger"
	end
end
	
end	

def reverse_upcase_noLTA(str)

	str.reverse.upcase.tr("LTA","")

end

def array_42(arr)

     arr.include?(42)

end

def magic_array(arr)

    arr.flatten(3).sort.uniq.map{|i| i*2 }.reject{|i| i%3==0 }
end




