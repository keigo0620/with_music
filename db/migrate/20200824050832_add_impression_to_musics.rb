class AddImpressionToMusics < ActiveRecord::Migration[5.2]
  def change
    add_column :musics, :impression, :text
  end
end
