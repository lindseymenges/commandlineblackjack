module Factory

  def self.make_deck
    card_hash = {
     "2" => 2,
     "3" => 3,
     "4" => 4,
     "5" => 5,
     "6" => 6,
     "7" => 7,
     "8" => 8,
     "9" => 9,
     "10" => 10,
     "Jack" => 10,
     "Queen" => 10,
     "King" => 10,
     "Ace" => 11}

    deck_array = []
    4.times do
        card_hash.each do |display , value|
        deck_array << Card.new(display.to_s,value)
      end
    end
    deck_array
  end
end

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

class Deck
  attr_reader :cards

  def initialize(cards_array)
    @cards = cards_array
  end

  def shuffle!
    @cards.shuffle!
  end

  def deal(number_of_cards = 1)
    @cards.shift(number_of_cards)
  end

end



class CardPlayer
  attr_reader :hand

  def initialize
    @hand = []
  end

  def add_card_to_hand(card)
    @hand << card
  end

  def score_total
    hand_score = 0

    hand.each do |card|
      hand_score += card.score_value
    end

  end

  def score
    if score_total < 21
      return score_total
    elsif !aces_in_hand?
      return score_total
    else
      aces
    end

  end

  def aces_in_hand
    hand.select { |card| card.display_value == "Ace" }
  end

  def aces_in_hand?
    aces_in_hand.length > 0
  end

end


class Player < CardPlayer

end

class Dealer < CardPlayer


end


class Blackjack

  def initialize(args={})
    @player = args.fetch(:player)
    @dealer = args.fetch(:dealer)
    @deck = args.fetch(:deck)
  end

  def start_game

  end



end

