Rails.application.routes.draw do
  devise_for :employees
  devise_for :companies
  devise_for :users

  root to: 'site#home'

  get 'employees/validate', to: 'employees#validate'

  resources :users do
    resources :races,:coupons, only: [:index]
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
