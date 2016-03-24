require 'rails_helper'

RSpec.describe "PasswordResets", type: :request do
  describe "GET /password_resets" do
    it "works! (now write some real specs)" do
      get password_resets_path
      expect(response).to have_http_status(200)
    end
  end
end
