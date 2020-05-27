book = ["below","down","go","going","horn",
        "how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dictionary)
    newHash = dictionary.reduce(Hash.new(0)) do |result,string|
        if word.downcase.include?(string)            
            result[string] += word.downcase.scan(/#{string}/).length if result[string] === 0
            result
        else
            result
        end
    end
end
p substrings("below",book)
p substrings("Howdy partner, sit down! How's it going?", book)