def echo(name)
    return name
end


def shout(name)
return  name.upcase
end


def repeat(word, number = 2)
    ([word] * number).join(" ")
end


def start_of_word (word,n)
word.split("")
if n == 1
  return word[0]
elsif n == 2
  return word[0..1]
else n == 3
  return word[0..2]
end
end


def first_word(word)
return word.split.first
end 


def titleize(s)
  small_words = %w[on the and]
  capitalized_words = s.split(" ").map do |word| small_words.include?(word) ? word : word.capitalize
  end
  capitalized_words.first.capitalize!
  capitalized_words.join(' ')
end
