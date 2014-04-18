class View
  def self.greeting
    puts "Welcome to the Command Line Casino! You're looking lucky - let's play some Blackjack."
  end

  def self.options
    puts "Would you like to hit or stand?"
  end

  def self.view_cards
    puts "Your current score is: #{@player.score}"
    puts "The dealer is showing: #{@dealer.score}"
  end

  def self.invalid_selection
    puts "That is not a valid selection. Please type 'hit' or 'stand'"
  end

  def self.the_game_is_over
    puts "The game has ended!"
    puts "Your total score is: #{@player.score}"
    puts "The dealer's total score is: #{@dealer.score}"
    Controller.check_winner
  end

  def self.player_wins
    puts "Congratulations, you win! I think you should keep playing and spend more money at the Command Line Casino. Your luck will never run out!"
  end

  def self.dealer_wins
    puts "Sorry, looks like your luck ran out. Maybe spending more money at the Command Line Casino will bring it back! I'll go ahead and order you a martini."
  end
end