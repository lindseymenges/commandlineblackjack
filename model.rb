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

  def deal
    @cards.shift
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

  def score
    if score_total < 21
      return score_total
    elsif !aces_in_hand?
      return score_total
    else
      adjust_score_for_aces
    end
    return score_total
  end

  def aces_in_hand
    hand.select { |card| card.display_value == "Ace" }
  end

  def aces_in_hand?
    aces_in_hand.length > 0
  end

  def busted?
    score > 21
  end

  private

  def adjust_score_for_aces
    aces = aces_in_hand
    while score_total > 21
      if aces.length == 0
        break
      else
      aces.pop.change_ace_score
      end
    end
  end

  def score_total
    hand_score = 0

    hand.each do |card|
      hand_score += card.score_value
    end
    hand_score
  end

end


class Player < CardPlayer

end

class Dealer < CardPlayer

end


class Blackjack
  attr_reader :player, :dealer, :deck

  def initialize(args={})
    @player = args.fetch(:player)
    @dealer = args.fetch(:dealer)
  end

  def start_game
    @deck = Deck.new(Factory.make_deck)
    @deck.shuffle!
    2.times do
      @player.add_card_to_hand(@deck.deal)
      @dealer.add_card_to_hand(@deck.deal)
    end
  end

  def hit
    @player.add_card_to_hand(@deck.deal)
  end

  def player_score
    @player.score
  end

  def dealer_score
    @dealer.score
  end

  def dealer_play
    while dealer_score_under_17? do
      @dealer.add_card_to_hand(@deck.deal)
    end

  end

  private

  def dealer_score_under_17?
    dealer_score < 17
  end

end

