require 'spec_helper'

feature "User browses the list of links" do
	
	before(:each){
		Peep.create(:post => "Dude, this isn't where I parked my car",
					:timestamp => DateTime.now)
	}

	scenario "when accessing the chitter homepage" do
	
	visit '/'
	expect(page).to have_content("Dude, this isn't where I parked my car")
	end
end