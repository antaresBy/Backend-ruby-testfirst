# It's not mine solution, it's Shanna's. But I think it's perfect and don't want to change!

def translate(string)
	vowels = ["a", "e", "i", "o", "u"]
	array = string.split(" ")
	new_arr = array.map do |word|
	  if vowels.include?(word.split("").first)
		word + "ay"
	  elsif word.index(/qu/) == 0 || string.index(/qu/) == 1
		word.slice(word.index(/qu/) + 2, word.length) + word.slice(0, word.index(/qu/) + 2) + "ay"
	  elsif word.index(/sch/) == 0
		word.slice(3, word.length) + word.slice(0, 3) + "ay"
	  else
		word.slice(word.split("").find_index { |letter| vowels.include?(letter) }, word.length) + word.slice(0, word.split("").find_index { |letter| vowels.include?(letter) }) + "ay"
	  end
	end
	new_arr.join(" ")
  end