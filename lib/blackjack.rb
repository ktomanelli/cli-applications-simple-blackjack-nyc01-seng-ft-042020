def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(10)+1
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game
  # code #end_game here
    puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  first=deal_card
  second = deal_card
  sum = (first+second)
  display_card_total(sum)
  sum
end

def hit?(total)
  # code hit? here
  prompt_user()
  newTotal = total
  get_user_input
    if(value=="h")
      newTotal+=deal_card()
      return newTotal
    elseif(value=="s")
     return newTotal

    else
      invalid_command
    end
end

def invalid_command
  # code invalid_command here
  puts 'Please enter a valid command'
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  initial_round
  hit?(total)
end
    
