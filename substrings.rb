dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(phrase, dictionary)
  phrase_array = phrase.downcase.split(' ')
  dictionary.reduce(Hash.new(0)) do |hash,key_word|
    phrase_array.each {|word| hash[key_word] += 1 if word.include?(key_word)}
    hash
  end
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary);
