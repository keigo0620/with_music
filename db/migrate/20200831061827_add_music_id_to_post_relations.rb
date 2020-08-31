class AddMusicIdToPostRelations < ActiveRecord::Migration[5.2]
  def change
    add_column :post_relations, :music_id, :integer
  end
end
