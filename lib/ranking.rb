class Ranking

	attr_accessor :all_positions

	def initialize(tournaments)
		@all_positions = tournaments.map(&:positions).flatten
	end


	def rank_by_prize() 
		rank = grouped_players.map do |player|
 			{ name: player[0], prize: player[1].inject(0) { |sum, actual| sum + actual.prize } }
		end

	end


	def sum_prize(player)
		@all_positions.select { |position| position.name == player }.map(&:prize).reduce(0, :+)
	end


	private

	def grouped_players
		@all_positions.group_by { |p| p.name }
	end

end