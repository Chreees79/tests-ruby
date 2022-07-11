
def echo(s)
  s
end

def shout(s)
  s.upcase
end

def repeat(s,n = 2)
([s] * n).join(" ")
end

def start_of_word(s,n)
s[0..(n - 1)]
end

def first_word(s)
  s.split[0] #ou s.split.first
end

def titleize(s)
  small_words = %w[on the and]
  capitalized_words = s.split(" ").map do |word| small_words.include?(word) ? word : word.capitalize
  end
  capitalized_words.first.capitalize!
  capitalized_words.join(" ")
end


