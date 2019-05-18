def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card = rand(1..11)
  return card
end

def display_card_total(num)
  # code #display_card_total here

  puts "Your cards add up to #{num}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"

end

def get_user_input
  # code #get_user_input here
  number = gets.chomp
  return number
end

def end_game(num)
  # code #end_game here
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  num1 = deal_card
  num2 = deal_card
  num = num1 + num2
  display_card_total(num)
  return num

end

def hit?(total)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == 'h'
    num = deal_card
    return (num + total)
  elsif input == 's'
    return total
  else
    invalid_command
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here

  welcome
  x = initial_round

  while x < 21
  x = hit?(x)
  display_card_total(x)
  end
  end_game(x)

end
