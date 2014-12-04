class Occupation < ActiveRecord::Base
	#belongs_to :organization
	#belongs_to :user
	has_and_belongs_to_many :users
	#has_many :users
	#has_many :occupations
end