class View
  def self.greeting
    puts "Welcome to the Command Line Casino! You're looking lucky - let's play some Blackjack."
  end

  def self.options
    puts "Would you like to hit or stand?"
  end

  def self.view_cards(player_score, dealer_score)
    puts "Your current score is: #{player_score}"
    puts "The dealer is showing: #{dealer_score}"
  end

  def self.invalid_selection
    puts "That is not a valid selection. Please type 'hit' or 'stand'"
  end

  def self.the_game_is_over(player_score, dealer_score)
    puts "The game has ended!"
    puts "Your total score is: #{player_score}"
    puts "The dealer's total score is: #{dealer_score}"
  end

  def self.player_wins
    puts "Congratulations, you win! I think you should keep playing and spend more money at the Command Line Casino. Your luck will never run out!"
  end

  def self.dealer_wins
    puts "Sorry, looks like your luck ran out. Maybe spending more money at the Command Line Casino will bring it back! I'll go ahead and order you a martini."
  end

  def self.push
    puts "Looks like there was a tie. Some people would say that means everybody wins. You should keep your luck rolling and play another round at the Command Line Casino!"
  end
end