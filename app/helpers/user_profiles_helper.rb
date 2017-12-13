module UserProfilesHelper
  def states_list
    states = %w(AL AK AZ AR CA CO CT DE FL GA HI ID IL IN IA KS KY
                LA ME MD MA MI MN MS MO MT NE NV NH NJ NM NY NC ND
                OH OK OR PA RI SC SD TN TX UT VT VA WA WV WI WY)
  end

  def display_profile_image(profile)
    if profile.avatar_file_name.nil?
      image_tag 'blank_img.jpg', class: 'img-fluid'
    else
      image_tag profile.avatar.url(:thumb), alt: 'where are you', class: 'img-fluid'
    end
  end


  def year_of_birth(age)
    year = Time.now.year
    year - age
  end

end
