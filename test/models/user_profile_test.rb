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

require 'test_helper'

class UserProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
