Rails.application.routes.draw do
  devise_for :employees
  devise_for :companies
  devise_for :users

  root to: 'site#home'

  get 'users/profile', to: 'users#profile'

  get 'companies/profile', to: 'companies#profile'

  get 'employees/profile', to: 'employees#profile'

end
