class Music < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :genre
	belongs_to :location
	has_many :music_comments, dependent: :destroy
	has_many :favorites, dependent: :destroy
	attachment :post_image
	validates :title, presence: true
	#validates :body, presence: true, length: { maximum:200}
	def favorited_by?(user)
		favorites.where(user_id: user.id).exists?
	end
	def self.search(search)
      if search
        where(['category LIKE ?', "%#{search}%"])
      else
        all
      end
    end
end
