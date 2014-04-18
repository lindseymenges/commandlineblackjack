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