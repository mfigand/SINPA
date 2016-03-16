class SiteController < ApplicationController


  def home
    check_log_session
  end

  private

  def check_log_session
    if user_signed_in?
      redirect_to user_path(current_user)
    elsif company_signed_in?
     redirect_to company_path(current_company)
    elsif employee_signed_in?
     redirect_to employees_validate_path
    end
  end

end
