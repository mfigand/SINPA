class SiteController < ApplicationController


  def users_home
    check_log_session
  end

  def companies_home
    check_log_session
  end

  def employees_home
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
