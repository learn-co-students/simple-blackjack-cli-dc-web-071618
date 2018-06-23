def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  both_cards = deal_card + deal_card
  display_card_total(both_cards)
  return both_cards
  end

def hit?(both_cards)
  prompt_user
  choice = get_user_input
  if choice == "h"
    new_total = deal_card + both_cards
    return new_total
  elsif choice == "s"
    return both_cards
  else
    invalid_command(both_cards)
  end
end

def invalid_command(both_cards)
  puts "Please enter a valid command"
  hit?(both_cards)
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  current_total = initial_round
  until current_total > 21
    current_total = hit?(current_total)
    display_card_total(current_total)
  end
  end_game(current_total)
end
