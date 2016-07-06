class Usuario < ApplicationRecord
	belongs_to :pessoa

	accepts_nested_attributes_for :pessoa

	validates_presence_of :login, :password, :password_confirmation
	
	has_secure_password


  	
end
