def login_user
  @user = FactoryGirl.create(:user)
  visit '/users_home'
  fill_in('login_user_email', :with => @user.email)
  fill_in('login_user_password', :with => '12345678')
  click_button 'Log in'
end

# module ControllerMacros
#   def login_company
#     before(:each) do
#       @request.env["devise.mapping"] = Devise.mappings[:company]
#       sign_in FactoryGirl.create(:company) # Using factory girl as an example
#     end
#   end
#
#   def login_user
#     before(:each) do
#       @request.env["devise.mapping"] = Devise.mappings[:user]
#       user = FactoryGirl.create(:user)
#       user.confirm! # or set a confirmed_at inside the factory. Only necessary if you are using the "confirmable" module
#       sign_in user
#     end
#   end
# end
