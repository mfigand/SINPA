class Reward < ActiveRecord::Base
  belongs_to :user
  belongs_to :branch
  has_many :coupons

  validates :name, presence: true, length: { maximum: 250 }
  validates :kms_cost, :description, :valid_from, :valid_through, presence: true
  validates :code, uniqueness: true, presence: true

  def self.create_coupon(reward)
    i=reward.available_units
    for termination in 1..i
     @coupon = Coupon.create(code:reward.code+termination.to_s, kms_cost:reward.kms_cost, redeemed: "pending", reward_id: reward.id)
    end
  end


end
