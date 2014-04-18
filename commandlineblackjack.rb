require_relative 'view'
require_relative 'model'

class Controller
  def self.play_the_game
    View.greeting
    # until game.over?
    #   View.view_cards
    #   View.options
    #   user_input = gets.chomp
    #   if user_input.upcase == "HIT"
    #     #call the hit method
    #   elsif user_input.upcase == "STAND"
    #     #call the stand method
    #   else
    #     View.invalid_selection
        # View.options
    #   end
    # end
    View.the_game_is_over
  end

  def self.check_winner
    if @player.score > @dealer.score
      View.player_wins
    elsif @dealer.score > @player.score
      View.dealer_wins
    end
  end
end



Controller.play_the_game