class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :user_profile

  validates :username, format: { with: /[a-z]+\d+|[a-z]+\_?[a-z]+\d*/ }
  validates :username, length: { in: 4..12}
end
