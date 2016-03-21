class Reward < ActiveRecord::Base
  belongs_to :user
  belongs_to :branch
  has_many :coupons

  validates :name, presence: true, length: { maximum: 250, minimum: 3 }, format: {with: /\A[a-zA-ZÑñ0-9\ ]+\z/}
  validates :kms_cost, :available_units, :description, :valid_from, :valid_through, presence: true
  # validates :valid_from, :valid_through, 

  # def self.create_coupon(reward)
  #   i=reward.available_units
  #   for termination in 1..i
  #    @coupon = Coupon.create(code:reward.code+termination.to_s, kms_cost:reward.kms_cost, redeemed: "pending", reward_id: reward.id)
  #   end
  # end


end
