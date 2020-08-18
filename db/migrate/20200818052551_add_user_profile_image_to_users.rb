class AddUserProfileImageToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :uaser_profile_image, :string
  end
end
