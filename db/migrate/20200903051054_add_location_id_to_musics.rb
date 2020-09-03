class AddLocationIdToMusics < ActiveRecord::Migration[5.2]
  def change
    add_column :musics, :location_id, :integer
  end
end
