def echo(text)
    return text
end

def shout(text)
    return text.upcase
end

def repeat(text, num=2)
    repeated_text = text
    (num-1).times { repeated_text += " " + text }
    return repeated_text
end

def start_of_word(word, num=1)
    return word[0..num-1]
end

def first_word(text)
    return text.partition(" ").first
end

#???#
def titleize(text)
    little_words = ["over", "the", "and"]
    text.capitalize.split.map { |word| little_words.include?(word) ? word : word.capitalize}.join(" ")
end