# == Schema Information
#
# Table name: image_posts
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  pet_id     :integer
#  caption    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_image_posts_on_pet_id   (pet_id)
#  index_image_posts_on_user_id  (user_id)
#

require 'test_helper'

class ImagePostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
