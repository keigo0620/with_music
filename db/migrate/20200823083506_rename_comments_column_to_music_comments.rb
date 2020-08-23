class RenameCommentsColumnToMusicComments < ActiveRecord::Migration[5.2]
  def change
  	rename_column :music_comments, :comments, :comment
  end
end
