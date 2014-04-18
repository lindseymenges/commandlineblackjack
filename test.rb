require_relative 'model'

def assert_equals(actual, expected, msg=nil)
  puts msg if msg
  raise "Expected #{expected} but got #{actual}" unless actual == expected
end


card = Card.new("Ace", 11)

assert_equals(card.display_value, "Ace")
assert_equals(card.score_value, 11)

card.change_ace_score

assert_equals(card.score_value, 1)

assert_equals(Factory.make_deck.length, 52)


# cards = Factory.make_deck

deck = Deck.new(Factory.make_deck)
assert_equals(deck.cards.length, 52)
assert_equals(deck.deal.class, Card)
deck.shuffle!

player = Player.new
player.add_card_to_hand(Card.new("King", 10))
player.add_card_to_hand(Card.new("7", 7))
assert_equals(player.hand.length, 2)
assert_equals(player.aces_in_hand.length, 0)
assert_equals(player.aces_in_hand?, false)

assert_equals(player.score, 17)
player.add_card_to_hand(Card.new("Ace", 11))
assert_equals(player.score, 18)

assert_equals(player.aces_in_hand.length, 1)
assert_equals(player.aces_in_hand?, true)
player.add_card_to_hand(Card.new("Ace", 11))
assert_equals(player.score, 19)

player2 = Player.new
player2.add_card_to_hand(Card.new("King", 10))
player2.add_card_to_hand(Card.new("Ace", 11))
assert_equals(player2.score, 21)
player2.add_card_to_hand(Card.new("Ace", 11))
player2.add_card_to_hand(Card.new("Ace", 11))
player2.add_card_to_hand(Card.new("Ace", 11))
assert_equals(player2.score, 14)

game = Blackjack.new(player: Player.new, dealer: Dealer.new)

game.start_game
assert_equals(game.deck.cards.length, 48)
assert_equals(game.dealer.hand.length, 2)
assert_equals(game.player.hand.length, 2)
game.hit
assert_equals(game.player.hand.length, 3)
assert_equals(game.deck.cards.length, 47)
game.hit
assert_equals(game.player.hand.length, 4)
assert_equals(game.deck.cards.length, 46)


ace = Card.new("Ace", 11)
king = Card.new("King", 10)
seven = Card.new("7", 7)

game = Blackjack.new(player: Player.new, dealer: Dealer.new)

game.player.add_card_to_hand(seven)
game.player.add_card_to_hand(ace)
game.dealer.add_card_to_hand(king)
assert_equals(game.winner.class, Player)

game = Blackjack.new(player: Player.new, dealer: Dealer.new)
game.player.add_card_to_hand(seven)
game.dealer.add_card_to_hand(king)
assert_equals(game.winner.class, Dealer)

game = Blackjack.new(player: Player.new, dealer: Dealer.new)
game.player.add_card_to_hand(seven)
game.dealer.add_card_to_hand(seven)
assert_equals(game.winner, nil)
