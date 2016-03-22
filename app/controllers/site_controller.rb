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

  def activity_user
    activity_user = {
      activityId: 12345678,
      activityType: "Run",
      activityTimeZone: Time.zone.now,
      duration: "1:52:26.000",
      distance: 20
    }
    render json: activity_user, status: 201
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
