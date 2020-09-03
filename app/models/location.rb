class Location < ApplicationRecord
	has_many :musics
	validates :seen, presence: true
end
