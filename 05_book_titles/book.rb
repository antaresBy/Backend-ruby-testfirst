class Book
    attr_accessor :title

    # def initialize
    #     @title = title
    # end

    def title
        little_words = ["over", "the", "and", "in", "of", "a", "an"]
        @title.capitalize.split.map { |word| little_words.include?(word) ? word : word.capitalize}.join(" ")
    end
end
