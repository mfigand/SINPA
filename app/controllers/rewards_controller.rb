class RewardsController < ApplicationController

  def index
    @branch = Branch.find(params[:branch_id])
    @rewards = @branch.rewards
  end

  def new
    @branch = Branch.find(params[:branch_id])
    @reward = Reward.new
  end

  def create
    @branch = Branch.find(params[:branch_id])
    @reward = Reward.new reward_params
    @reward.branch_id = params[:branch_id]
    if @reward.save
      flash[:notice] = "Reward created succesfully"
      redirect_to company_branch_rewards_path(current_company.id,params[:branch_id])
    else
      flash[:alert] = "ALERT Reward not created"
      render 'new'
    end
  end

  def show
    @branch = Branch.find(params[:branch_id])
    @reward = Reward.find(params[:id])
  end

  private

  def reward_params
   params.require(:reward).permit(:name, :kms_cost, :code, :description, :valid_from, :valid_through)
  end

end
