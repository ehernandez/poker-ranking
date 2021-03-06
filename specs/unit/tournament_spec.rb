require_relative '../spec_helper'

describe Tournament do 

	let :positions do
		[   Position.new(1,'Joao', 0, 30),  
			Position.new(2,'Jose', 1, 0),
			Position.new(3,'Pedro', 0, 0) ]
	end

	subject { Tournament.new(positions) }

	it 'assigns 1 point of strength to the first one on a game of three players ' do
	 	expect(subject.strength('Joao')).to eq(1)
	end

	it 'assigns -1 point of strength to the last one on a game of three players ' do
	 	expect(subject.strength('Pedro')).to eq(-1)
	end

	it 'determinates which player is the winner' do
		expect(subject.winner.rank).to eq(1)
	end

end