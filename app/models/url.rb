class Url < ActiveRecord::Base
  validates :link, presence: true, length: {minimum: 2, maximum: 200}

  validates :random_string, uniqueness: true, presence: true, length: {minimum: 1, maximum: 10}
end
