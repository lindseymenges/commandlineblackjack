class Card
  attr_reader :display_value, :score_value

  def initialize(display_value, score_value)
    @display_value = display_value
    @score_value = score_value
  end

  def change_ace_score
    if display_value == "Ace"
      @score_value = 1
    end
  end

end