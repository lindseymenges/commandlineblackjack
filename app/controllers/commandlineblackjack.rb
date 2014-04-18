
class Controller
  def self.play_the_game
    View.greeting
    play_again = ""
    @player = Player.new
    until play_again.upcase == "EXIT"
      @game = BlackjackGame.new(player: @player)
      View.money(@player.money)
      View.bet
      bet = gets.chomp.to_i
      until bet <= @player.money && bet != 0
        if bet > @player.money || bet == 0
          View.error
          View.money(@player.money)
          View.bet
          bet = gets.chomp.to_i
        end
      end
      @player.bet!(bet)
      @game.start
      View.view_cards(@game.player_score, @game.dealer_score)
      until @game.over?
        View.options
        user_input = gets.chomp
        if user_input.upcase == "HIT"
          @game.hit
        elsif user_input.upcase == "STAND"
          @game.dealer_play
        else
          View.invalid_selection
        end
        View.view_cards(@game.player_score, @game.dealer_score)
      end
      View.the_game_is_over(@game.player_score, @game.dealer_score)
      self.check_winner
      View.money(@player.money)
      if @player.money == 0
        View.out_of_money
        play_again = "EXIT"
      else
        View.again
        play_again = gets.chomp
      end
      @player.reset
    end
  end

  def self.check_winner
    return View.push if @game.winner == nil
    if @game.winner.class == Player
      @player.won
      return View.player_wins
    else
      return View.dealer_wins
    end
  end
end







# class Controller
#   def self.play_the_game
#     View.greeting
#     @player = Player.new
#     @game = BlackjackGame.new(player: @player)
#     @game.start

#     View.view_cards(@game.player_score, @game.dealer_score)
#     until @game.over?
#       View.options
#       user_input = gets.chomp
#       if user_input.upcase == "HIT"
#         @game.hit
#       elsif user_input.upcase == "STAND"
#         @game.dealer_play
#       elsif user_input.upcase == "EXIT"
#       else
#         View.invalid_selection
#       end
#       View.view_cards(@game.player_score, @game.dealer_score)
#     end
#     View.the_game_is_over(@game.player_score, @game.dealer_score)
#     self.check_winner
#   end

#   def self.check_winner
#     return View.push if @game.winner == nil
#     return View.player_wins if @game.winner.class == Player
#     return View.dealer_wins if @game.winner.class == Dealer

#   end
# end


