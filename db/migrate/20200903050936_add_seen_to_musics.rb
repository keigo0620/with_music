class AddSeenToMusics < ActiveRecord::Migration[5.2]
  def change
    add_column :musics, :seen, :string
  end
end
