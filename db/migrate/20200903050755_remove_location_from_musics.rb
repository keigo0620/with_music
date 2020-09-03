class RemoveLocationFromMusics < ActiveRecord::Migration[5.2]
  def change
    remove_column :musics, :location, :integer
  end
end
