class UsersController < ApplicationController
  before_action :authenticate_user!, except: :update

  def profile
   @user = current_user
   render 'users/profile'
  end

  def branches_map
    @company = Company.find(params[:company_id])
    @branches = @company.branches
  end

  # def check_id_activity
  #   # binding.pry
  #   id = []
  #   params.each_with_index do |activity,index|
  #     id << activity[:activityId]
  #   end
  #   binding.pry
  #   params[:activity_1][:activityId]
  #
  # end

 def sync_account
   if current_user.kms.length == 0
    #  binding.pry
     set_new_runner = User.new_runner(current_user, params)
     binding.pry
     render json: set_new_runner, status: 201
   else
    #  binding.pry
    update_runner_account = User.update_runner(current_user, params)
     render json:update_runner_account, status: 201
   end
 end

end
