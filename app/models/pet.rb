# == Schema Information
#
# Table name: pets
#
#  id                  :integer          not null, primary key
#  user_id             :integer
#  name                :string
#  type                :string
#  date_of_birth       :datetime
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  avatar_file_name    :string
#  avatar_content_type :string
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#  avatar_original_w   :integer
#  avatar_original_h   :integer
#  avatar_crop_x       :integer
#  avatar_crop_y       :integer
#  avatar_crop_w       :integer
#  avatar_crop_h       :integer
#
# Indexes
#
#  index_pets_on_user_id  (user_id)
#

class Pet < ApplicationRecord
  belongs_to :user

  has_attached_file :avatar, styles: { thumb: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  crop_attached_file :avatar
end
