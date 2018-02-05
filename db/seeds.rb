# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

images = []
Dir.foreach('vendor/assets/images') do |item|
  images << File.open(File.join(Rails.root, "vendor/assets/images/#{item}"))
end

100.times do |i|
  @post = Post.create(caption: "post #{i}", user_id: 1, image: images.sample)
end
