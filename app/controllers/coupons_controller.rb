class CouponsController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @coupons = @user.coupons
  end

  def show
    @coupon = Coupon.find_by_id(params[:id])
  end

  def rewards
    @rewards = Reward.all
  end

  def edit_coupon
    @reward = Reward.find(params[:id])
    @available_coupon = @reward.coupons.find_by_user_id(nil)
      if @available_coupon != nil
        @available_coupon.user_id = current_user.id
        @available_coupon.save
        redirect_to user_coupons_path(current_user)
      else
        flash[:notice] = "Sorry there is no available coupons for this reward"
        redirect_to users_rewards_path
      end
  end

  def find_coupon
    @coupon = Coupon.find_by_code(params[:code])
    if @coupon.redeemed == "pending"
      @coupon.employee_id = current_employee.id
      @coupon.redeemed = "charged"
      @coupon.save
      render json: @coupon, status: 201
    elsif @coupon.redeemed == "charged"
      render json: "Coupon was already charged", status: 406
    end
  end

end
