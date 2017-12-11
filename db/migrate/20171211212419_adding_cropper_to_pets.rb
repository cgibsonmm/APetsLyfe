class AddingCropperToPets < ActiveRecord::Migration[5.1]
  def change
    add_column :pets, :avatar_original_w, :integer
    add_column :pets, :avatar_original_h, :integer
    add_column :pets, :avatar_crop_x,     :integer
    add_column :pets, :avatar_crop_y,     :integer
    add_column :pets, :avatar_crop_w,     :integer
    add_column :pets, :avatar_crop_h,     :integer
  end
end
