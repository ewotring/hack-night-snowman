# File.open("snowman_image.txt").each do |line|
#   puts line
#   # write each line to a new file for each game
# end

file='snowman_image.txt'
f = File.open(file, "r")
f.each_line { |line|
  puts line
}
f.close
# I'm trying to build the user interface that shows the snowman melting one line at a time (The number of lines to remove per incorrect guess can be changed.)

puts "Tell me the word"
word = gets.chomp
puts "#{word}"

puts "How many turns?"
turns_allowed = gets.chomp.to_i

underscore_pure = []
(word.length).times do
  underscore_pure << "_"
end

underscore_change = underscore_pure

underscore_bool = true

turns = 0

while underscore_bool == true && turns <= turns_allowed



  puts "guess letter"
  letter_guess = gets.chomp
  puts "#{letter_guess}"

  word_array = word.split('')
  puts "#{word_array}"

  index_array = []
  index = 0
  while index < word_array.length
    if word_array[index] == letter_guess
      index_array << index
    end
    index += 1
  end

  puts "#{index_array}"


  index_array.each do |value|
    underscore_change[value] = letter_guess
  end

  underscore_string = underscore_change.join

  puts "#{underscore_string}"

  if underscore_change.include?("_")
    underscore_bool = true
  else
    underscore_bool = false
    puts "Guesser wins"
  end
  turns += 1
end

puts "Game over"
# downcase
