def caesar_cipher(string,key) 
  alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
  upcase = alphabet.map {|downcase_letter| downcase_letter.upcase}
  
  string_array = string.split('')
  string_array.each_with_index do |letter,position|
    alphabet.each_with_index {|char,index| string_array[position] = alphabet[(index + key) % 26] if letter == char }
    upcase.each_with_index {|char,index| string_array[position] = upcase[(index + key) % 26] if letter == char }
  end
  string_array.join
end

puts caesar_cipher("What a string!", 5)