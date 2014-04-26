class Url < ActiveRecord::Base



 validates :link, presence: true, length: {minimum: 2, maximum: 200}

 end
