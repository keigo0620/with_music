class AddArtistToMusics < ActiveRecord::Migration[5.2]
  def change
    add_column :musics, :artist, :string
  end
end
