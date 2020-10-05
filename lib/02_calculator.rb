def add(a,b)
  	a + b
end

def subtract(a,b)
	a - b
end

def sum(array)
	array == [] ? 0 : array.reduce(:+)
end

def multiply(a,b)
	a*b
end

def power(a,b)
	a**b
end

def factorial(n)
	n == 0 ? 1 : n.downto(1).reduce(:*)
end
