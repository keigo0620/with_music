class AddTitleToMusics < ActiveRecord::Migration[5.2]
  def change
    add_column :musics, :title, :string
  end
end
