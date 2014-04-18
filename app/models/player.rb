class Player < ActiveRecord::Base
	has_many :blackjack_games

  attr_reader :hand

  def initialize(args = {})
    super
    @hand = []
    # @name = args.fetch(:name, nil)
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

  def busted?
    score > 21
  end

  private

  def aces_in_hand
    hand.select { |card| card.display_value == "Ace" }
  end

  def aces_in_hand?
    aces_in_hand.length > 0
  end

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