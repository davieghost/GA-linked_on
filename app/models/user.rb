class User < ActiveRecord::Base
	belongs_to :organization
	has_many :skills
	has_and_belongs_to_many :occupations
	#has_one :occupation
	#has_many_and_belongs_to :
end