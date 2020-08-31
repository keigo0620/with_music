class AddLocationToMusics < ActiveRecord::Migration[5.2]
  def change
    add_column :musics, :location, :integer
  end
end
