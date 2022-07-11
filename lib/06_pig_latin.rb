def translate(word_array)

translate_word = []
  word_array.split(" ").each do |word| 
    # all the code execute : "translates many words" and "translates two words"

    if word.start_with?('a', 'e', 'i', 'o', 'u')  
      translate_word << word + 'ay'
    # translates a word beginning with a vowel
    
    elsif word.start_with?('q', 'u')
      translate_word << "#{word.byteslice(2..100)}quay"
    # "counts 'qu' as a single phoneme"
    
    elsif word.start_with?('s') && word[1..100].start_with?('q', 'u')
      translate_word << "#{word.byteslice(3,3) + word [0..2]}ay"
    #  "counts 'qu' as a consonant even when it's preceded by a consonant"  
    
    elsif word[1..100].start_with?('a', 'e', 'i', 'o', 'u')
      translate_word << "#{word.byteslice(1,100) + word[0]}ay"
    # "translates a word beginning with one consonant"

    elsif word[2..100].start_with?('a', 'e', 'i', 'o', 'u')
      translate_word << "#{word.byteslice(2,10) + word[0..1]}ay"
    # "translates a word beginning with two consonants"
 
    else word[3..100].start_with?('a', 'e', 'i', 'o', 'u') 
      translate_word <<"#{word.byteslice(3, 3) + word[0..2]}ay"
    #"translates a word beginning with three consonants"

    end
  end
  translate_word.join(" ")
end

