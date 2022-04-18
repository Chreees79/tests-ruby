def add(a,b)
return a+b
end

def subtract(a,b)
  return a-b
end

def sum(arr)
  return arr.sum
  end
  
  def multiply(a,b)
  return a*b
  end
  
  def power(a,b)
  return a**b
  end
  
  def factorial(i)
  return (1..i).inject(:*) || 0      
  end
  puts factorial(3)