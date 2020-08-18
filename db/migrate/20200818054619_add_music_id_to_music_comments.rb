class AddMusicIdToMusicComments < ActiveRecord::Migration[5.2]
  def change
    add_column :music_comments, :music_id, :integer
  end
end
