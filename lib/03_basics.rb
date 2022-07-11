def who_is_bigger (a,b,c)
  if a.nil? || b.nil? || c.nil?
    return "nil detected"
  elsif a >= b && a >= c
    return "a is bigger"
  elsif b >= a && b >= c
    return "b is bigger"
  else c >= a && c >= b
    return "c is bigger"
  end
end



def reverse_upcase_noLTA(s)
  s.reverse.upcase.delete("LTA")
end


def array_42 (a)
  a.include?(42)
end

def magic_array(arr)
  arr.flatten.sort.map{|i|i*2}.reject{|i|i%3 == 0}.uniq
end
