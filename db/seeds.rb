require 'faker'
require 'debugger'

require_relative '../config/application'

# 10.times do
# 	puts Faker::Name.first_name
# end


# debugger
10.times do
  Player.create(:name => Faker::Name.first_name)
end





