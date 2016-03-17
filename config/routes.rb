Rails.application.routes.draw do
  devise_for :employees
  devise_for :companies
  devise_for :users

  root to: 'site#home'

  get '/employees/validate', to: 'employees#validate'
  get '/validate_response', to: 'employees#validate_response'

  get '/find_coupon', to: 'coupons#find_coupon'

  get '/users/rewards', to: 'coupons#rewards'
  get '/users/edit_coupon/:id', to: 'coupons#edit_coupon', as: 'edit_coupon'

  resources :users do
    resources :races, :coupons
  end

  resources :companies do
    resources :branches do
      resources :rewards, :employees
    end
  end

  resources :employees do
    resources :coupons
  end

end
