# class User

# 	include DataMapper:Resource

# 	# has n, :messages, :through => Resource 

# 	property :id, Serial
# 	property :email, String, :required => true, :format => :email_address, 
# 			 :unique => true, :message => "An account is already registered with this email"
	
# 	property :password, String
# 	property :name, String, :required => true
# 	property :username, String, :required => true, :unique => true
# end