def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(x)
  puts "Your cards add up to #{x}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(x)
  card_total = x
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
 
end

def initial_round
  a = deal_card + deal_card
  display_card_total(a)
  return a
end

def hit?(x)
  prompt_user
  answer = get_user_input
  
  until answer == "h" || answer == "s"
    invalid_command
    prompt_user
    answer = get_user_input
  end

  if (answer == "h")
    return x+=deal_card
  else
    return x
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
  
    until total >= 21
      total = hit?(total)    
      display_card_total(total)
    end
  end_game(total)
end
