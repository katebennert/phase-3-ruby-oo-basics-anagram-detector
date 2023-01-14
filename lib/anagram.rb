require 'pry'

class Anagram
    def initialize(word)
        @word = word
    end

    def match(possible_anagrams)
        matches = Array.new
        possible_anagrams.each do |anagram|
            if anagram.chars.sort == @word.chars.sort
                matches.push(anagram)
            end
        end
        matches
    end
end

listen=Anagram.new("listen")
listen.match(%w[enlists google inlets banana])
