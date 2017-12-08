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
#
# Indexes
#
#  index_pets_on_user_id  (user_id)
#

class Pet < ApplicationRecord
  belongs_to :user

  has_attached_file :avatar, styles: { thumb: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end