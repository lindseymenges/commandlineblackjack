require_relative '../../config/application'

class BlackjackGame < ActiveRecord::Base
  belongs_to :player

  attr_reader :player, :dealer, :deck

  def initialize(args={})
    @player = args.fetch(:player)
    @dealer = Dealer.new
    @over = false
  end

  def start
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

    @over = true

  end

  def over?
    if @player.busted?
      @over = true
    end
    @over
  end

  def winner
    if @player.busted? && @dealer.busted?
      return nil
    elsif @player.busted?
      return @dealer
    elsif @dealer.busted?
      return @player
    elsif @player.score > @dealer.score
      return @player
    elsif @player.score < @dealer.score
      return @dealer
    elsif @player.score == @dealer.score
      return nil
    end
  end

  private

  def dealer_score_under_17?
    dealer_score < 17
  end

end