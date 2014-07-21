class Position

	attr_accessor :rank, :name, :buy_ins, :prize

	def initialize (rank, name, buy_ins, prize)
		@rank = rank
		@name = name
		@buy_ins = buy_ins
		@prize = prize
	end

end