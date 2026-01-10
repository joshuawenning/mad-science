dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings (string, array)
  hash_matches = array.each_with_object(Hash.new(0)) do |word, hash|
    match_count = string.downcase.scan(word).count
    hash[word] = match_count if match_count > 0
  end

  p hash_matches
end

substrings("Howdy partner, sit down! How's it going?", dictionary)
