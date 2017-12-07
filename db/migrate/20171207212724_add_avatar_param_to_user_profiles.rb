class AddAvatarParamToUserProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :user_profiles, :avatar_original_w, :interger
    add_column :user_profiles, :avatar_original_h, :interger
    add_column :user_profiles, :avatar_crop_x,     :interger
    add_column :user_profiles, :avatar_crop_y,     :interger
    add_column :user_profiles, :avatar_crop_w,     :interger
    add_column :user_profiles, :avatar_crop_h,     :interger
  end
end
