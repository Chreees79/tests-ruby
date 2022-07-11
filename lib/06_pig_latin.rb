def translate(word_array)

translate_word = []
  word_array.split(" ").each do |word| 
    # all the code execute : "translates many words" and "translates two words"

    if word.start_with?(/[aeiou]/)  
      translate_word.push( word + 'ay')
    # translates a word beginning with a vowel
    
    elsif word.start_with?(/[qu]/)
      translate_word.push("#{word.byteslice(2,(word.size)) + word[0..1]}ay")
    # "counts 'qu' as a single phoneme"
    
    elsif word.start_with?(/[s]/) && word[1..2].start_with?(/[qu]/)
      translate_word.push("#{word.byteslice(3,(word.size)) + word [0..2]}ay")
    #  "counts 'qu' as a consonant even when it's preceded by a consonant"  
    
    elsif word[1..(word.size)].start_with?(/[aeiou]/)
      translate_word.push("#{word.byteslice(1,(word.size)) + word[0]}ay")
    # "translates a word beginning with one consonant"

    elsif word[2..(word.size)].start_with?(/[aeiou]/)
      translate_word.push("#{word.byteslice(2,(word.size)) + word[0..1]}ay")
    # "translates a word beginning with two consonants"
 
    else word[3..(word.size)].start_with?(/[aeiou]/) 
      translate_word.push("#{word.byteslice(3, (word.size)) + word[0..2]}ay")
    #"translates a word beginning with three consonants"

    end
  end
  translate_word.join(" ")
end

