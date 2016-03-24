class RewardsController < ApplicationController

  def index
    @company = Company.find(params[:company_id])
    @rewards = @company.rewards

    # @filterrific = initialize_filterrific(
    #   Reward,
    #   params[:filterrific]
    # ) or return
    # @allRewards = @filterrific.find.page(params[:page])
    #
    # respond_to do |format|
    #   format.html
    #   format.js
    # end
  end

  def all_rewards
    @allRewards = Reward.all
  end

  def new
    @company = Company.find(params[:company_id])
    @reward = Reward.new
  end

  def create
    @company = Company.find(params[:company_id])
    @reward = Reward.new reward_params
    @reward.company_id = params[:company_id]
    if @reward.save
      flash[:notice] = "Reward created succesfully"
      redirect_to company_rewards_path(current_company.id,params[:id])
    else
      flash[:alert] = "ALERT Reward not created"
      render 'new'
    end
  end

  def show
    @company = Company.find(params[:company_id])
    @reward = Reward.find(params[:id])
  end

  def destroy
    @reward = Reward.find(params[:id])
    @reward.destroy
    redirect_to company_rewards_path(current_company.id,params[:id])
  end

  private

  def reward_params
   params.require(:reward).permit(:name, :kms_cost, :description, :valid_from, :valid_through, :available_units, :image)
  end

end
