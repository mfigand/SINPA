class Coupon < ActiveRecord::Base
  belongs_to :user

  validates :code, presence: true, length: { maximum: 250 }
  validates :kms_cost, :redeemed, presence: true
end
