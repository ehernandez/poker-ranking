require_relative '../spec_helper'

describe Ranking do 

	let :positions_tournament_1 do
		[   Position.new(1,'Joao', 0, 30),  
			Position.new(2,'Jose', 1, 0),
			Position.new(3,'Pedro', 0, 0) ]
	end

	let :positions_tournament_2 do
		[   Position.new(1,'Jose', 1, 30),  
			Position.new(2,'Joao', 0, 10),
			Position.new(3,'Pedro', 0, 0) ]
	end

	let (:tournament_1) { Tournament.new(positions_tournament_1) }
	let (:tournament_2) { Tournament.new(positions_tournament_2) }
	let :tournaments do [ tournament_1, tournament_2 ] end

	subject { Ranking.new(tournaments) }

#	it 'acumulates prize by name' do
#		expect(subject.rank_by_prize[0].name).to eq('Joao')
#		expect(subject.rank_by_prize[0].prize).to eq(40)
#		expect(subject.rank_by_prize.size).to eq(3)
#	end

	it 'calculate prize for Joao as 40' do
		expect(subject.sum_prize('Joao')).to eq(40)
	end

end

