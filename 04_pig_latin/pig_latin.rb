#write your code here
def translate words
    new_words = []
    capitalized_indexes = []
    comma_indexes = []

    words.split(' ').each_with_index do |word, i|

        if word[0] =~ /[A-Z]/
            capitalized_indexes << i
        end

        if word[-1] == ","
            comma_indexes << i
            word[-1] = ''
        end

        #main translation code
        word = word.downcase

        if word.match? /([aeiou].*)/
            split_by_first_vowel = word.split(/([aeiou].*)/)
            
            if split_by_first_vowel[0][-1] == "q" && split_by_first_vowel[1][0] == "u"
                split_by_first_vowel[0] << split_by_first_vowel[1][0]
                split_by_first_vowel[1] = split_by_first_vowel[1].slice(1, split_by_first_vowel[1].length)
            end
            
            new_word = split_by_first_vowel[1] << split_by_first_vowel[0] + "ay"
            new_words << new_word
        else
            new_words << word
        end
    end

    #adding commas and capitalization
    capitalized_indexes.each do |capitalized|
        new_words[capitalized] = new_words[capitalized].capitalize
    end

    comma_indexes.each do |comma|
        new_words[comma] = new_words[comma] + ","
    end

    new_words.join(' ')
end

#translate("My estate goes to my husband, son, daughter-in-law, and nephew")