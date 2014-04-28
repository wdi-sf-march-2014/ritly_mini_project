class Url < ActiveRecord::Base

	def random_string_maker
		return SecureRandom.urlsafe_base64(n=5)
	end
end
