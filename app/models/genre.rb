class Genre < ApplicationRecord
	has_many :music
	validates :category, presence: true
end
