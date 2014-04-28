class Url < ActiveRecord::Base
	#minimum includes http://www. already in form value
	validates :link, presence: true, length: {minimum: 14}
end
