
# After you create your URL model validate the presence of the link attribute and that the link has at least three characters.

class Url < ActiveRecord::Base
	validates :link, presence: true, length: {minimum: 3}
end


