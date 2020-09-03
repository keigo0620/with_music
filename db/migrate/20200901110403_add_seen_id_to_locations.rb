class AddSeenIdToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :seen, :string
  end
end
