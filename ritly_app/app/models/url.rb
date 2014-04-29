class Url < ActiveRecord::Base 

# put some validation code in here. 
	validates :link, presence: true, length: {minimum: 3} 

end
