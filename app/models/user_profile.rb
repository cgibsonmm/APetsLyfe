class UserProfile < ApplicationRecord
  belongs_to :user, dependent: :destroy

  has_attached_file :avatar, styles: { medium: "640x640", thumb: "200x200#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
