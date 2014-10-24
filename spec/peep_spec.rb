require 'spec_helper'

describe Peep do
	it 'should be created and retrieved from the db' do
		expect(Peep.count).to eq(0)
		Peep.create(:post => "Dude, this isn't where I parked my car",
					:timestamp => DateTime.now)
		expect(Peep.count).to eq(1)
		peep = Peep.first
		expect(peep.post).to eq("Dude, this isn't where I parked my car")
		expect(peep.timestamp.class).to eq(DateTime)
		peep.destroy
		expect(Peep.count).to eq(0)
	end
end