def who_is_bigger(a, b, c)
  if a.nil? || b.nil? || c.nil?
    return "nil detected"
  elsif a >= b && a >=c
    return "a is bigger"
  elsif b >=a && b >= c
    return "b is bigger"
  elsif c >= a && c >= b
    return "c is bigger"
  end
end


def reverse_upcase_noLTA(string)
 string.upcase.reverse.delete "LTA"
end


def array_42(array)
return array.include? (42)
end


def magic_array(ar)
return ar.flatten.sort.uniq.map{|a|a*2}.reject{|a|a%3 == 0}
end
