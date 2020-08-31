class AddGenreIdToPostRelations < ActiveRecord::Migration[5.2]
  def change
    add_column :post_relations, :genre_id, :integer
  end
end
