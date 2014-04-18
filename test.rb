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
assert_equals(deck.deal.first.class, Card)
deck.shuffle!

player = Player.new
player.add_card_to_hand(Card.new("King", 10))
player.add_card_to_hand(Card.new("7", 7))
assert_equals(player.hand.length, 2)
assert_equals(player.aces_in_hand.length, 0)
assert_equals(player.aces_in_hand?, false)


assert_equals(player.score, 17)
player.add_card_to_hand(Card.new("Ace", 11))

assert_equals(player.aces_in_hand.length, 1)
assert_equals(player.aces_in_hand?, true)


