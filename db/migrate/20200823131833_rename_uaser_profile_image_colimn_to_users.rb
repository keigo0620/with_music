class RenameUaserProfileImageColimnToUsers < ActiveRecord::Migration[5.2]
  def change
  	rename_column :users, :uaser_profile_image, :profile_image_id
  end
end
