# == Schema Information
#
# Table name: urls
#
#  id            :integer          not null, primary key
#  link          :string(255)
#  random_string :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#  clicks        :integer
#

class Url < ActiveRecord::Base

	# class method to create it's own instance... does this make sense?
	# def self.create_random_string

	# 	@url.random_string = SecureRandom.urlsafe_base64(5)
	# end

end

