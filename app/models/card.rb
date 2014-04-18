class Card
  attr_reader :display_value, :score_value, :suit

  def initialize(display_value, score_value, suit = nil)
    @display_value = display_value
    @score_value = score_value
    @suit = suit
  end

  def change_ace_score
    if display_value == "Ace"
      @score_value = 1
    end
  end

end