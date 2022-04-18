#addition
def add(a,b)
return a+b
end

#soustraction
def subtract(a,b)
  return a-b
end

#somme
def sum(arr)
  return arr.sum
  end

#multiplication  
  def multiply(a,b)
  return a*b
  end

#puissance  
  def power(a,b)
  return a**b
  end

#factoriel 
  def factorial(i)
  return (1..i).inject(:*) || 0      
  end
