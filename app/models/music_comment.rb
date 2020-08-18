class MusicComment < ApplicationRecord
	belongs_to :user
	belongs_to :Music
	validates :comment, presence: true
end
