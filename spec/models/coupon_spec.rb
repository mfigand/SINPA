require 'rails_helper'

RSpec.describe Coupon, type: :model do

  it "Generate unic code" do
    @code = Coupon.generate_code
    expect(Coupon.find_by_code(@code)).to be(nil)
  end

  # it "Substract kms when get reward" do
  #   expect(Coupon.subtract_available_units(@reward)).to change(@user_Kms_table.kms)
  # end

end
