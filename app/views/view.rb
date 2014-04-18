class View
  def self.greeting
    puts " _____                                           _ "
    puts "/  __ \\                                         | |"
    puts "| /  \\/ ___  _ __ ___  _ __ ___   __ _ _ __   __| |"
    puts "| |    / _ \\| '_ ` _ \\| '_ ` _ \\ / _` | '_ \\ / _` |"
    puts "| \\__/\\ (_) | | | | | | | | | | | (_| | | | | (_| |"
    puts " \\____/\\___/|_| |_| |_|_| |_| |_|\\__,_|_| |_|\\__,_|"
    puts ""
    puts " _     _                                           "
    puts "| |   (_)                                          "
    puts "| |    _ _ __   ___                                "
    puts "| |   | | '_ \\ / _ \\                               "
    puts "| |___| | | | |  __/                               "
    puts "\\_____/_|_| |_|\\___|                               "
    puts ""
    puts " _____           _                                 "
    puts "/  __ \\         (_)                                "
    puts "| /  \\/ __ _ ___ _ _ __   ___                      "
    puts "| |    / _` / __| | '_ \\ / _ \\                     "
    puts "| \\__/\\ (_| \\__ \\ | | | | (_) |                    "
    puts " \\____/\\__,_|___/_|_| |_|\\___/                     "
    puts ""
    puts "Welcome to the Command Line Casino!"
    puts "You're looking lucky - let's play some Blackjack!"
    puts "--------------------------------"

  end

  def self.options
    puts "Would you like to hit or stand?"
    puts "--------------------------------"

  end

  def self.view_cards(player_score, dealer_score)
    puts "\n"
    puts "Your current score is: #{player_score}"
    puts "The dealer is showing: #{dealer_score}"
    puts "\n"
    puts "--------------------------------"

  end

  def self.invalid_selection
    puts "That is not a valid selection. Please type 'hit' or 'stand'"
    puts "--------------------------------"

  end

  def self.the_game_is_over(player_score, dealer_score)
    puts "The game has ended!"
    puts "\n"
    puts "Your total score is: #{player_score}"
    puts "The dealer's total score is: #{dealer_score}"
    puts "\n"
    puts "--------------------------------"

  end

  def self.player_wins
    puts "__   __                     _       _ "
    puts "\\ \\ / /                    (_)     | |"
    puts " \\ V /___  _   _  __      ___ _ __ | |"
    puts "  \\ // _ \\| | | | \\ \\ /\\ / / | '_ \\| |"
    puts "  | | (_) | |_| |  \\ V  V /| | | | |_|"
    puts "  \\_/\\___/ \\__,_|   \\_/\\_/ |_|_| |_(_)"
    puts ""
    puts "Congratulations, you win!"
    puts "I think you should keep playing and spend"
    puts "more money at the Command Line Casino."
    puts "Your luck will never run out!"
    puts "--------------------------------"

  end

  def self.dealer_wins
    puts " _____                             "
    puts "/  ___|                            "
    puts "\\ `--.  ___  _ __ _ __ _   _       "
    puts " `--. \\/ _ \\| '__| '__| | | |      "
    puts "/\\__/ / (_) | |  | |  | |_| |_ _ _ "
    puts "\\____/ \\___/|_|  |_|   \\__, (_|_|_)"
    puts "                        __/ |      "
    puts "                       |___/       "
    puts ""
    puts "Sorry, looks like your luck ran out."
    puts "Maybe spending more money at the"
    puts "Command Line Casino will bring it back!"
    puts "I'll go ahead and order you a martini."
    puts "--------------------------------"

  end

  def self.push
    puts "Looks like there was a tie."
    puts "Some people would say that means everybody wins."
    puts "You should keep your luck rolling and play"
    puts "another round at the Command Line Casino!"
    puts "--------------------------------"

  end

  def self.again
    puts "Would you like to deal or exit?"
  end

  def self.money(money)
    puts "\n"
    puts "You currently have $#{money}"
    puts "\n"
    puts "--------------------------------"
  end

  def self.bet
    puts "Please enter how many dollars you would like to bet"
  end

  def self.error
    puts "Invalid entry please select again"
  end

  def self.out_of_money
    puts " _____     _                  _     _ _          "
    puts "|_   _|   | |                | |   (_) |         "
    puts "  | | __ _| | _____    __ _  | |__  _| | _____   "
    puts "  | |/ _` | |/ / _ \\  / _` | | '_ \\| | |/ / _ \\  "
    puts "  | | (_| |   <  __/ | (_| | | | | | |   <  __/_ "
    puts "  \\_/\\__,_|_|\\_\\___|  \\__,_| |_| |_|_|_|\\_\\___( )"
    puts "                                              |/ "
    puts " _                     _                         "
    puts "| |                   | |                        "
    puts "| | ___  ___  ___ _ __| |                        "
    puts "| |/ _ \\/ __|/ _ \\ '__| |                        "
    puts "| | (_) \\__ \\  __/ |  |_|                        "
    puts "|_|\\___/|___/\\___|_|  (_)                        "
    puts ""
    puts "We only love you when you have money."
    puts "And give me back that martini!"
    puts "--------------------------------"
  end
end

module CardString

  def self.print(card_obj)
    cards = {
    "heart" => {
    "Ace" =>".------.\n|A   _ |\n|( \\/ )|\n| \\  / |\n|  \\/ A|\n'------'",
    "King" => ".------.\n|K   _ |\n|( \\/ )|\n| \\  / |\n|  \\/ K|\n'------'",
    "Queen" => ".------.\n|Q   _ |\n|( \\/ )|\n| \\  / |\n|  \\/ Q|\n'------'",
    "Jack" => ".------.\n|J   _ |\n|( \\/ )|\n| \\  / |\n|  \\/ J|\n'------'",
    "10" => ".------.\n|10  _ |\n|( \\/ )|\n| \\  / |\n|  \\/10|\n'------'",
    "9" => ".------.\n|9   _ |\n|( \\/ )|\n| \\  / |\n|  \\/ 9|\n'------'",
    "8" => ".------.\n|8   _ |\n|( \\/ )|\n| \\  / |\n|  \\/ 8|\n'------'",
    "7" => ".------.\n|7   _ |\n|( \\/ )|\n| \\  / |\n|  \\/ 7|\n'------'",
    "6" => ".------.\n|6   _ |\n|( \\/ )|\n| \\  / |\n|  \\/ 6|\n'------'",
    "5" => ".------.\n|5   _ |\n|( \\/ )|\n| \\  / |\n|  \\/ 5|\n'------'",
    "4" => ".------.\n|4   _ |\n|( \\/ )|\n| \\  / |\n|  \\/ 4|\n'------'",
    "3" => ".------.\n|3   _ |\n|( \\/ )|\n| \\  / |\n|  \\/ 3|\n'------'",
    "2" => ".------.\n|2   _ |\n|( \\/ )|\n| \\  / |\n|  \\/ 2|\n'------'"
    },
    #diamonds
    "diamond" => {
    "Ace" => ".------.\n|A /\\  |\n| /  \\ |\n| \\  / |\n|  \\/ A|\n'------'",
    "King" => ".------.\n|K /\\  |\n| /  \\ |\n| \\  / |\n|  \\/ K|\n'------'",
    "Queen" => ".------.\n|Q /\\  |\n| /  \\ |\n| \\  / |\n|  \\/ Q|\n'------'",
    "Jack" => ".------.\n|J /\\  |\n| /  \\ |\n| \\  / |\n|  \\/ J|\n'------'",
    "10" => ".------.\n|10/\\  |\n| /  \\ |\n| \\  / |\n|  \\/10|\n'------'",
    "9" => ".------.\n|9 /\\  |\n| /  \\ |\n| \\  / |\n|  \\/ 9|\n'------'",
    "8" => ".------.\n|8 /\\  |\n| /  \\ |\n| \\  / |\n|  \\/ 8|\n'------'",
    "7" => ".------.\n|7 /\\  |\n| /  \\ |\n| \\  / |\n|  \\/ 7|\n'------'",
    "6" => ".------.\n|6 /\\  |\n| /  \\ |\n| \\  / |\n|  \\/ 6|\n'------'",
    "5" => ".------.\n|5 /\\  |\n| /  \\ |\n| \\  / |\n|  \\/ 5|\n'------'",
    "4" => ".------.\n|4 /\\  |\n| /  \\ |\n| \\  / |\n|  \\/ 4|\n'------'",
    "3" => ".------.\n|3 /\\  |\n| /  \\ |\n| \\  / |\n|  \\/ 3|\n'------'",
    "2" => ".------.\n|2 /\\  |\n| /  \\ |\n| \\  / |\n|  \\/ 2|\n'------'"
    },
    #spades
    "spade" => {
    "Ace" => ".------.\n|A .   |\n; / \\  |\n|(_,_) |\n|  I  A|\n'------'",
    "King" => ".------.\n|K .   |\n; / \\  |\n|(_,_) |\n|  I  K|\n'------'",
    "Queen" => ".------.\n|Q .   |\n; / \\  |\n|(_,_) |\n|  I  Q|\n'------'",
    "Jack"=> ".------.\n|J .   |\n; / \\  |\n|(_,_) |\n|  I  J|\n'------'",
    "10" => ".------.\n|10.   |\n; / \\  |\n|(_,_) |\n|  I 10|\n'------'",
    "9" => ".------.\n|9 .   |\n; / \\  |\n|(_,_) |\n|  I  9|\n'------'",
    "8" => ".------.\n|8 .   |\n; / \\  |\n|(_,_) |\n|  I  8|\n'------'",
    "7" => ".------.\n|7 .   |\n; / \\  |\n|(_,_) |\n|  I  7|\n'------'",
    "6" => ".------.\n|6 .   |\n; / \\  |\n|(_,_) |\n|  I  6|\n'------'",
    "5" => ".------.\n|5 .   |\n; / \\  |\n|(_,_) |\n|  I  5|\n'------'",
    "4" => ".------.\n|4 .   |\n; / \\  |\n|(_,_) |\n|  I  4|\n'------'",
    "3" => ".------.\n|3 .   |\n; / \\  |\n|(_,_) |\n|  I  3|\n'------'",
    "2" => ".------.\n|2 .   |\n; / \\  |\n|(_,_) |\n|  I  2|\n'------'"
    },
    #clubs
    "club" => {
    "Ace" => ".------.\n|A _   |\n| ( )  |\n|(_x_) |\n|  Y  A|\n'------'",
    "King" => ".------.\n|K _   |\n| ( )  |\n|(_x_) |\n|  Y  K|\n'------'",
    "Queen" => ".------.\n|Q _   |\n| ( )  |\n|(_x_) |\n|  Y  Q|\n'------'",
    "Jack" => ".------.\n|J _   |\n| ( )  |\n|(_x_) |\n|  Y  J|\n'------'",
    "10" => ".------.\n|10_   |\n| ( )  |\n|(_x_) |\n|  Y 10|\n'------'",
    "9" => ".------.\n|9 _   |\n| ( )  |\n|(_x_) |\n|  Y  9|\n'------'",
    "8" => ".------.\n|8 _   |\n| ( )  |\n|(_x_) |\n|  Y  8|\n'------'",
    "7" => ".------.\n|7 _   |\n| ( )  |\n|(_x_) |\n|  Y  7|\n'------'",
    "6" => ".------.\n|6 _   |\n| ( )  |\n|(_x_) |\n|  Y  6|\n'------'",
    "5" => ".------.\n|5 _   |\n| ( )  |\n|(_x_) |\n|  Y  5|\n'------'",
    "4" => ".------.\n|4 _   |\n| ( )  |\n|(_x_) |\n|  Y  4|\n'------'",
    "3" => ".------.\n|3 _   |\n| ( )  |\n|(_x_) |\n|  Y  3|\n'------'",
    "2" => ".------.\n|2 _   |\n| ( )  |\n|(_x_) |\n|  Y  2|\n'------'"
    }
    }
    puts cards[card_obj.suit][card_obj.display_value]
    puts "--------------------------------"
  end
end