require 'spec_helper'

describe CodaGem do
	it 'create a single module' do
		
		expect(defined?(Fruit)).to eq nil
		CodaGem.create('Fruit')

		expect(defined?(Fruit)).not_to eq nil  		
	end

	it 'Create a hierarchy of modules' do
		expect(defined?(Animals::Cats::Bombay)).to eq nil
		CodaGem.create('Animals::Cats::Bombay')
		expect(defined?(Animals::Cats::Bombay)).to_not eq nil

	end
end