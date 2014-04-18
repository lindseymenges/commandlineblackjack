require_relative '../../config/application'

class CreateBlackjackGameTable < ActiveRecord::Migration
	def change
		create_table :blackjack_games do |t|
			t.belongs_to :player
			t.string :win_or_loss
			t.timestamps
		end
	end
end
