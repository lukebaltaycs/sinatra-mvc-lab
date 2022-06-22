require 'pry'
class PigLatinizer

    def piglatinize(words)

        returned = ""
        wordies = words.split(" ")
        wordies.each do |word|
            returned += individual_word(word) + " "
        end
        returned.strip
    end

    def individual_word(word)
        vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        v_values = []
        vowels.each do |vowel|
            v_value = word.index(vowel)
            if v_value != nil
                v_values << v_value
            end
        end
        #binding.pry
        cor = v_values.min - 1
        first = word[0..cor]
        if v_values.min == 0
            return word.slice!(0) + word + "way"
        else
            return word[(cor + 1)..] + first + "ay"
        end
    end

end
