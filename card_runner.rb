require "./lib/card"

puts "Please enter the card number"
answer = gets.chomp

card = Card.new(answer)
puts card.valid?
