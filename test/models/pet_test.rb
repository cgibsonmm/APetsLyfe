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

require 'test_helper'

class PetTest < ActiveSupport::TestCase

  # Sets up a valid pet
  def setup
    @pet = Pet.new(
      name: 'Test_pet',
      date_of_birth: 2016-07-04,
    )
  end
  # test "the truth" do
  #   assert true
  # end

  test "name must be present" do
    @pet.name = ''
    assert_not @pet.save, 'name is empty and being saved'
  end

  test "name must be three or more chars" do
    @pet.name = 'a'
    assert_not @pet.save
    @pet.name = 'fido'
    assert_response @pet.save, true
  end
end
