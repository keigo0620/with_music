class AddGenreIdToMusics < ActiveRecord::Migration[5.2]
  def change
    add_column :musics, :genre_id, :integer
  end
end
