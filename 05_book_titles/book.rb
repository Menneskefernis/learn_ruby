class Book
# write your code here
    def initialize()
            
    end   

    def title
        @title
    end 

    def title=(string)
        words = string.split(' ')
        processed_words = []

        no_capitalize = ['the', 'a', 'an', 'and', 'in', 'of']

        words.each_with_index do |word, i|
            if !no_capitalize.include?(word) || i == 0
                processed_words << word.capitalize
            else
                processed_words << word
            end
        end

        @title = processed_words.join(' ')
    end
end