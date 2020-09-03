class Genre < ApplicationRecord
	has_many :musics
	validates :category, presence: true
	def self.search(search)
      if search
        where(['category LIKE ?', "%#{search}%"])
      else
        all
      end
    end

end

