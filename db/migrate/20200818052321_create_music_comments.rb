class CreateMusicComments < ActiveRecord::Migration[5.2]
  def change
    create_table :music_comments do |t|

      t.timestamps
    end
  end
end
