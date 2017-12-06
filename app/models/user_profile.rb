# == Schema Information
#
# Table name: user_profiles
#
#  id                  :integer          not null, primary key
#  user_id             :integer
#  about               :text
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  avatar_file_name    :string
#  avatar_content_type :string
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#  age                 :integer
#  city                :string
#  state               :string
#  zip_code            :integer
#
# Indexes
#
#  index_user_profiles_on_city      (city)
#  index_user_profiles_on_user_id   (user_id)
#  index_user_profiles_on_zip_code  (zip_code)
#

class UserProfile < ApplicationRecord
  belongs_to :user, dependent: :destroy

  has_attached_file :avatar, styles: { medium: "640x640", thumb: "200x200#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
