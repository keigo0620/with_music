class AddCommentsToMusicComments < ActiveRecord::Migration[5.2]
  def change
    add_column :music_comments, :comments, :text
  end
end
