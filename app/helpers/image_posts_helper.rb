module ImagePostsHelper

  def current_pets
    pets = []
    current_user.pets.each do |pet|
      pets << pet
    end
    pets
  end
end
