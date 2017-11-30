class AddAgeToUserProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :user_profiles, :age,        :integer
    add_column :user_profiles, :city,       :string
    add_column :user_profiles, :state,      :string
    add_column :user_profiles, :zip_code,   :integer

    add_index :user_profiles, :zip_code
    add_index :user_profiles, :city
  end
end
