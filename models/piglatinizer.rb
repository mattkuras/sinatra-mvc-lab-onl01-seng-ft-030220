require 'pry'
class PigLatinizer 

    def piglatinize(word)
        text = word.split(" ")
        if text.length == 1
            str = text.join
            piglatinize_word(str)
        else 
            piglatinize_sentence(text)
        end
    end

    def consonant?(char)
        !char.match(/[aAeEiIoOuU]/)
    end

    def piglatinize_word(str)
        string = str.split("")
        if !consonant?(string[0])
            string << "w"
            pig = string.join
        elsif consonant?(string[0]) && consonant?(string[1]) && consonant?(string[2])
             string << string.slice(0, 3)
             string.slice!(0, 3)
             pig = string.join
        elsif consonant?(string[0]) && consonant?(string[1])
             string << string.slice(0, 2)
             string.slice!(0, 2)
             pig = string.join
        else
            string << string.slice(0)
            string.slice!(0)
            pig = string.join
        end 
        pig + "ay"
    end

    def piglatinize_sentence(sentence)
        new_sen = sentence.map do |word|
            piglatinize_word(word)
        end
        new_sen.join(" ")
    end
    
   

end

