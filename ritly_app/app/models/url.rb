class Url < ActiveRecord::Base

	  validates :link, presence: true, length: {minimum: 3, maximum: 200}
	  validates :random_string, presence: true, length: {minimum: 5, maximum: 200}

end
