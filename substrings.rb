dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, array)
  array.inject(Hash.new(0)) {|hash, key|
    hash[key] += 1 if string.include? key
    hash
  }
end

# substrings("below", dictionary)  => {"below"=>1, "low"=>1}
