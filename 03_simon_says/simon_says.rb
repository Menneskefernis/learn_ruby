#write your code here
def echo message
    message
end

def shout message
    message.upcase
end

def repeat message, num = 2
    ((message + ' ') * num).rstrip
end

def start_of_word word, num
    word[0 .. num - 1]
end

def first_word sentence
    sentence.split.first
end

def titleize sentence
    small_words = ["and", "the", "over"]
    
    words_in_sentence = sentence.split.map(&:capitalize)
    first_word = words_in_sentence[0]
    
    if words_in_sentence.length > 1
        rest_of_sentence = words_in_sentence.slice(1, words_in_sentence.length).join(' ')

        small_words.each do |word|
            rest_of_sentence = rest_of_sentence.gsub(/#{word}/i, word)
        end
        
        first_word + ' ' + rest_of_sentence
    else
        first_word
    end
end

