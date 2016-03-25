require 'rails_helper'

RSpec.describe SiteController, type: :controller do
  before (:each) do
    @user = FactoryGirl.create(:user, name: 'Manu')
    # @user = User.create({ name: 'test',
    #                        email: 'test@test.com',
    #                        password: '12345678',
    #                        password_confirmation: '12345678'
    #                         })
    login_user @user
  end

  it "should load the user home page" do
    get 'users_home'
    if user_signed_in?
     expect(last_response).to be_ok
    end
  end

end
