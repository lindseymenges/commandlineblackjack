

class Controller
  def self.play_the_game
    View.greeting
    @player = Player.new
    @game = BlackjackGame.new(player: @player)
    @game.start

    View.view_cards(@game.player_score, @game.dealer_score)
    until @game.over?
      View.options
      user_input = gets.chomp
      if user_input.upcase == "HIT"
        @game.hit
      elsif user_input.upcase == "STAND"
        @game.dealer_play
      elsif user_input.upcase == "EXIT"
      else
        View.invalid_selection
      end
      View.view_cards(@game.player_score, @game.dealer_score)
    end
    View.the_game_is_over(@game.player_score, @game.dealer_score)
    self.check_winner
  end

  def self.check_winner
    return View.push if @game.winner == nil
    return View.player_wins if @game.winner.class == Player
    return View.dealer_wins if @game.winner.class == Dealer

  end
end


