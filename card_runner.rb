require './lib/card'

def start
  puts 'Please enter the card number.You can quit by entering q or quit'
  answer = gets.chomp
  if %[q quit].split.include?(answer)
    quit
  elsif valid_input?(answer)
    check_validity(answer)
  else
    invalid_input
  end
end

def quit
  puts 'Thanks!! See you soon.'
  abort
end

def valid_input?(answer)
  answer.chars - %[1 2 3 4 5 6 7 8 9 0].split == [] &&
  (answer.length == 15 || answer.length == 16)
end

def check_validity(answer)
  card = Card.new(answer)
  puts card.valid?
  start
end

def invalid_input
  puts 'Thats not a valid input'
  start
end

start
