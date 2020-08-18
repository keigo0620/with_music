class AddUserIdToMusicComments < ActiveRecord::Migration[5.2]
  def change
    add_column :music_comments, :user_id, :integer
  end
end
