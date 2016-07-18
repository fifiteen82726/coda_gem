require 'spec_helper'

describe CodaGem do
	it 'create a single module' do
		defined?(Fruit).should == nil
		CodaGem.create('Fruit')
	end


end