class SiteController < ApplicationController
  before_action if: :devise_controller?
end
