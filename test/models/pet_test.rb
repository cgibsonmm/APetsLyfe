# == Schema Information
#
# Table name: pets
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  name          :string
#  type          :string
#  date_of_birth :datetime
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_pets_on_user_id  (user_id)
#

require 'test_helper'

class PetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
