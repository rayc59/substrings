def substrings(string, dictionary)
  splitString = string.split(' ')
  dictionary.reduce(Hash.new(0)) do |collection, curr|
    splitString.map do |word|
      if word.include?curr
        collection[curr] += 1 
      end
    end
    collection
  end
end

dictionary = ["this", "th", "is", "apple", "con"]
puts substrings("thishereth this th", dictionary)