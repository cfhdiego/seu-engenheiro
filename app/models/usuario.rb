class Usuario < ApplicationRecord
	belongs_to :pessoa

	accepts_nested_attributes_for :pessoa

	has_secure_password
  	
end
