class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :rewards
  has_many :races
  has_many :coupons
  has_many :kms

  validates :name, presence: true, length: { maximum: 250 }
  validates :email, uniqueness: true
  validates :password, presence: true

  # validates_presence_of     :password, :if => :password_required?

 # def password_required?
 #   !persisted? || !password.nil? || !password_confirmation.nil?
 # end

end
