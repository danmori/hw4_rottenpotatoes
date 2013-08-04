require 'spec_helper'

describe Movie do
	describe 'search for similar movies from director' do
		it 'should call Movie method with director' do
			Movie.should_receive(:similar).with('Ridley Scott')
			Movie.similar('Ridley Scott')
		end
	end
end