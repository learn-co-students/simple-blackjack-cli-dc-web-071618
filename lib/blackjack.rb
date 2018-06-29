def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(11) + 1
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  total = 0
  2.times do 
    total += deal_card
  end
  display_card_total(total)
  total
end

def hit?(number)
  prompt_user
  input = get_user_input
  if input == 's'
    return number
  
  elsif input == 'h'
    return number += deal_card
  else 
    invalid_command
  end
  
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  total = initial_round 
  while total <= 21
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
    
