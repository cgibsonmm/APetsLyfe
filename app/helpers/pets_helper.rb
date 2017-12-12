module PetsHelper

  def calculate_pets_age(datetime)
    time_ago_in_words(datetime) + ' old'
  end
end
