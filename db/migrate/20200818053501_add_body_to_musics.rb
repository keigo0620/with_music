class AddBodyToMusics < ActiveRecord::Migration[5.2]
  def change
    add_column :musics, :body, :string
  end
end
