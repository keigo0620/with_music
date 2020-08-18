class AddMusicIdToFavorites < ActiveRecord::Migration[5.2]
  def change
    add_column :favorites, :music_id, :integer
  end
end
