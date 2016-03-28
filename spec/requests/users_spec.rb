require 'rails_helper'

RSpec.describe "Users login", type: :request do

  describe "GET #profile" do

    context 'the user exists' do
     before (:each) do
       @user = FactoryGirl.create(:user, name: 'Manu')
      #  binding.pry
       get user_path(@user), format: :jbuilder
      sign_in @user
     end

     it 'respond with an error json' do
        expect(response.body).to eq("You need to sign in or sign up before continuing.")
      end

     it 'gets the correct user' do
        data = JSON.parse(response.body)
        expect(@user.name).to eq('Manu')
      end

   end

  end

end
