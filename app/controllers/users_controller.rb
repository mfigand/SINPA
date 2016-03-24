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

 def sync_account
   if current_user.kms.length == 0
     set_new_runner = User.new_runner(current_user, params)
     render json: set_new_runner, status: 201
   else
    update_runner_account = User.update_runner(current_user, params)
     render json:update_runner_account, status: 201
   end
 end

end
