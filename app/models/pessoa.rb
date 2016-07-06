class Pessoa < ApplicationRecord
	belongs_to :endereco
	
	accepts_nested_attributes_for :endereco

	VALID_EMAIL_FORMAT= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

    validates :email, presence: true, length: {maximum: 260}, format: { with: VALID_EMAIL_FORMAT}, uniqueness: {case_sensitive: false}

end
