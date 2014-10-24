class Peep

	include DataMapper::Resource

	property :id, 		 Serial
	property :timestamp, DateTime
	property :post, 	 Text, :lazy => false, :length => 165

end