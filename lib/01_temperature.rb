# conversion farenheit vers celcius
def ftoc(n)
  (n.to_f - 32) * 5/9
end

#conversion celcius vers farenheit
def ctof(n)
  n.to_f * 9/5 + 32
end
