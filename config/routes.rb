Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations'}
  get 'welcome/index'
  root "home#index"


  resources :user_profiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
