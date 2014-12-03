class User < ActiveRecord::Base
	belongs_to :organization
	has_many :skills
end
