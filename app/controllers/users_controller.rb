class UsersController < ApplicationController
  before_action :authenticate_user!, except: :update

  def profile
   @user = current_user
   render 'users/profile'
  end

 def sync_account
   current_user_kms = current_user.kms[0]
   if current_user.kms.length == 0
     current_user_kms = Km.create(kms:params[:distance].to_i, level: 1, races: 1, user_id:current_user.id)
     render json:current_user_kms, status: 201
   else
     current_user_kms.kms = current_user_kms.kms + params[:distance].to_i
     level = current_user_kms.kms/100 == 0 ? 1 : current_user_kms.kms/100 + 1
     current_user_kms.level = level
     current_user_kms.races = current_user_kms.races + 1
     current_user_kms.save
     render json:current_user_kms, status: 201
   end
 end

end
