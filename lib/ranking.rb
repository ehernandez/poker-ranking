class Ranking

	attr_accessor :all_positions

	def initialize(tournaments)
		@all_positions = tournaments.map(&:positions).flatten
	end

	def rank_by_prize() 
#		tournaments.map(&:name, &:prize).reduce(0, :+)

		all_positions = tournaments.flatten
		all_positions.group_by { |position| position[:name] } 
		all_positions.reduce(0, :+);
		
	end

	def sum_prize(player)
		all_positions.select { |position| position.name == player }.map(&:prize).reduce(0, :+)
	end

end
