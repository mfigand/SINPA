Rails.application.routes.draw do
  devise_for :employees
  devise_for :companies
  devise_for :users

  get '/users', to: 'site#users_home'
  get '/companies', to: 'site#companies_home'
  get '/employees', to: 'site#employees_home'
  get '/api_sinparun', to: 'site#activity_user'

  get '/users/sync_account', to: 'users#sync_account'
  get '/users/check_id_activity', to: 'users#check_id_activity'
  get '/users/branches_map/:company_id', to: 'users#branches_map', as: 'users_branches_map'

  get '/branches_map/:company_id', to: 'companies#branches_map', as: 'branches_map'

  get '/employees/validate', to: 'employees#validate'
  get '/validate_response', to: 'employees#validate_response'

  get '/users/rewards', to: 'rewards#all_rewards'

  get '/search_coupon', to: 'coupons#search_coupon'
  get '/users/rewards_map', to: 'coupons#rewards_map'
  get '/users/edit_coupon/:id', to: 'coupons#edit_coupon', as: 'edit_coupon'

  resources :users do
    resources :races, :coupons
  end

  resources :companies do
    resources :branches, :rewards do
      resources :rewards, :employees
    end
  end

  resources :employees do
    resources :coupons
  end

end
