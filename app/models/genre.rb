class Genre < ApplicationRecord
	has_many :musics
	validates :category, presence: true
end
