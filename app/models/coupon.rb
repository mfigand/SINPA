class Coupon < ActiveRecord::Base
  belongs_to :user
  belongs_to :reward
  belongs_to :employee

  validates :code, presence: true, length: { maximum: 250 }
  validates :kms_cost, :redeemed, presence: true

  def self.generate_code
    code = SecureRandom.hex(4)
    if Coupon.find_by_code(code) == nil
      code
    else
      generate_code
    end
  end

  def self.rest_kms(current_user, reward)
    @user_Kms_table = Km.find_by_user_id(current_user.id)
    @user_Kms_table.kms = @user_Kms_table.kms - reward.kms_cost
    @user_Kms_table.save
    # current_user.update(kms:current_user.kms-reward.kms_cost)
  end

  def self.rest_available_units(reward)
    reward.available_units = reward.available_units - 1
    reward.reserved_units = reward.reserved_units + 1
    reward.save
  end

  def self.rest_reserved_units(reward)
    reward.reserved_units = reward.reserved_units - 1
    reward.charged_units = reward.charged_units + 1
    reward.save
  end
end
