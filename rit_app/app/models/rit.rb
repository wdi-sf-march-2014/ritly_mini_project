class Rit < ActiveRecord::Base

  # validates :title, presence: true, length: {minimum: 2, maximum: 200}
  # Valdiating that there is some description.
  validates :link, presence: true, length: {minimum: 3}
	
end
