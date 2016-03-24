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

  def rewards_map
    @branches = Branch.all
  end

  def edit_coupon
    @reward = Reward.find(params[:id])
    if Km.find_by_user_id(current_user.id) == nil
      flash[:notice] = "Sorry don't have enough kms"
      redirect_to users_rewards_path
    else
      @code = Coupon.generate_code
      @user_Kms = Km.find_by_user_id(current_user.id).kms
       @reward.coupons.length < @reward.available_units && @user_Kms >= @reward.kms_cost
        Coupon.rest_kms(current_user,@reward)
        Coupon.rest_available_units(@reward)
        @coupon = Coupon.new(code:@code, kms_cost:@reward.kms_cost, redeemed:"reserved", user_id: current_user.id, reward_id: @reward.id)
        @coupon.save
        redirect_to user_coupons_path(current_user)
      end
  end

  def search_coupon
    @coupon = Coupon.find_by_code(params[:code])
    if @coupon.redeemed == "reserved" && @coupon.user.email == params[:email]
      Coupon.rest_reserved_units(@coupon.reward)
      @coupon.employee_id = current_employee.id
      @coupon.redeemed = "charged"
      @coupon.save
      render json: @coupon.reward, status: 201
    elsif @coupon.redeemed == "charged"
      render json: "Coupon was already charged", status: 406
    end
  end

end
