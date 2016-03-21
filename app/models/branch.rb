class Branch < ActiveRecord::Base
  has_many :rewards
  has_many :employees
  belongs_to :company

  validates :name, uniqueness: true, presence: true, length: { maximum: 250 }
  validates :phone, :address, :latitude, :longitude, :city, presence: true
  # validates :schedule, :state, :country, presence: true

end
