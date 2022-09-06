dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring(string, dictionary)
  match = Hash.new
  dictionary.each do |word|
    match[word] = string.downcase.scan(/(?=#{word})/).count if string.downcase.include?(word)
  end
  p match
end
substring('below', dictionary)
substring('Howdy low, horn it low', dictionary)
