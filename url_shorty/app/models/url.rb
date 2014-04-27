class Url < ActiveRecord::Base
	validates :link, presence: true
  validates :random_string, presence: true
  validates_uniqueness_of :random_string

end
