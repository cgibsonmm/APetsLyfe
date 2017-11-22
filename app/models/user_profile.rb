class UserProfile < ApplicationRecord
  belongs_to :user, dependent: :destroy
  
  validates :about, length: { in: 5..250 }
end
