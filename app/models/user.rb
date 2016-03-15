class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :rewards
  has_many :races
  has_many :coupons

  validates :name, presence: true, length: { maximum: 250 }
  validates :email, uniqueness: true
  validates :password, presence: true

end
