Rails.application.routes.draw do
  devise_for :employees
  devise_for :companies
  devise_for :users

  get '/users', to: 'site#users_home'
  get '/companies', to: 'site#companies_home'
  get '/employees', to: 'site#employees_home'

  get '/employees/validate', to: 'employees#validate'
  get '/validate_response', to: 'employees#validate_response'

  get '/search_coupon', to: 'coupons#search_coupon'
  get '/users/rewards_map', to: 'coupons#rewards_map'
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
