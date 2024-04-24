DICTIONARY = %w(below down go going horn how howdy it i low own part partner sit)

def substrings(string, dictionary = DICTIONARY)
  string ||= "Howdy partner, sit down! How's it going?"
  result = {}

  dictionary.each do |word|
    split_count = " #{string} ".split(word).size
    result[word] = split_count.pred if split_count > 1
  end

  result
end

puts substrings(ARGV[0])
