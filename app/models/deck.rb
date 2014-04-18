class Deck
  attr_reader :cards

  def initialize(cards_array)
    @cards = cards_array
  end

  def shuffle!
    @cards.shuffle!
  end

  def deal
    @cards.shift
  end

end