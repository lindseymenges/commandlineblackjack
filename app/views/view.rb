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

    puts "Welcome to the Command Line Casino! You're looking lucky - let's play some Blackjack!"
  end

  def self.options
    puts "Would you like to hit or stand?"
  end

  def self.view_cards(player_score, dealer_score)
    puts "\n"
    puts "Your current score is: #{player_score}"
    puts "The dealer is showing: #{dealer_score}"
    puts "\n"
  end

  def self.invalid_selection
    puts "That is not a valid selection. Please type 'hit' or 'stand'"
  end

  def self.the_game_is_over(player_score, dealer_score)
    puts "The game has ended!"
    puts "\n"
    puts "Your total score is: #{player_score}"
    puts "The dealer's total score is: #{dealer_score}"
    puts "\n"
  end

  def self.player_wins
    puts "__   __                     _       _ "
    puts "\\ \\ / /                    (_)     | |"
    puts " \\ V /___  _   _  __      ___ _ __ | |"
    puts "  \\ // _ \\| | | | \\ \\ /\\ / / | '_ \\| |"
    puts "  | | (_) | |_| |  \\ V  V /| | | | |_|"
    puts "  \\_/\\___/ \\__,_|   \\_/\\_/ |_|_| |_(_)"
    puts ""

    puts "Congratulations, you win! I think you should keep playing and spend more money at the Command Line Casino. Your luck will never run out!"
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

    puts "Sorry, looks like your luck ran out. Maybe spending more money at the Command Line Casino will bring it back! I'll go ahead and order you a martini."
  end

  def self.push
    puts "Looks like there was a tie. Some people would say that means everybody wins. You should keep your luck rolling and play another round at the Command Line Casino!"
  end

  def self.again
    puts "Would you like to deal or exit?"
  end

  def self.money(money)
    puts "\n"
    puts "You currently have $#{money}"
    puts "\n"
  end

  def self.bet
    puts "Please enter how many dollars you would like to bet"
  end

  def self.error
    puts "Invalid entry please select again"
  end

  def self.out_of_money
    puts "Lindsey type something funny"
  end
end
