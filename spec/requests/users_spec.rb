require 'rails_helper'

RSpec.describe "Users login", type: :request do

  describe "GET #profile" do

    context 'the user exists' do
     before (:each) do
       @user = FactoryGirl.create(:user, name: 'Manu')
       get user_path(@user), format: :jbuilder
      #  get new_user_registration_path
      #  click_link 'Name'
      #  fill_in '#user_name', :whit => @user.name
      #  click_link 'Email'
      #  fill_in '#user_email', :whit => @user.email
      #  click_link 'Password'
      #  fill_in 'user_password', :whit => @user.password
      #  click_link 'Password confirmation'
      #  fill_in 'user_password_confirmation', :whit => @user.password_confirmation
      #  click_link 'sign_up'
     end

     it 'respond with an error json' do
        expect(response.body).to eq("You need to sign in or sign up before continuing.")
      end

    #  it 'gets the correct user' do
    #     data = JSON.parse(response.body)
    #     expect(data['name']).to eq('Manu')
    #   end

   end

  end

end
