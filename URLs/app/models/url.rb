class Url < ActiveRecord::Base
    validates :link, presence: true 
    
end
