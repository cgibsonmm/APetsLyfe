class AddAttachmentAvatarToUserProfiles < ActiveRecord::Migration[5.1]
  def self.up
    change_table :user_profiles do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :user_profiles, :avatar
  end
end
