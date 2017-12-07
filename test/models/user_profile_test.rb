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
#  avatar_original_w   :integer
#  avatar_original_h   :integer
#  avatar_crop_x       :integer
#  avatar_crop_y       :integer
#  avatar_crop_w       :integer
#  avatar_crop_h       :integer
#
# Indexes
#
#  index_user_profiles_on_city      (city)
#  index_user_profiles_on_user_id   (user_id)
#  index_user_profiles_on_zip_code  (zip_code)
#

require 'test_helper'

class UserProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
