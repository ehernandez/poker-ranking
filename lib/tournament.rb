class Tournament

	attr_accessor :positions

	def initialize(positions)
		@positions = positions
	end

	def winner() 
		positions.find { |position| position.rank == 1 }
	end

	def strength(player)
		sum = positions.map(&:rank).reduce(0, :+)
		rank = positions.find { |position| position.name == player }.rank

		sum/positions.size - rank 
	end

end