# == Route Map
#
#                   Prefix Verb   URI Pattern                       Controller#Action
#         new_user_session GET    /users/sign_in(.:format)          devise/sessions#new
#             user_session POST   /users/sign_in(.:format)          devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)         devise/sessions#destroy
#        new_user_password GET    /users/password/new(.:format)     devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)    devise/passwords#edit
#            user_password PATCH  /users/password(.:format)         devise/passwords#update
#                          PUT    /users/password(.:format)         devise/passwords#update
#                          POST   /users/password(.:format)         devise/passwords#create
# cancel_user_registration GET    /users/cancel(.:format)           registrations#cancel
#    new_user_registration GET    /users/sign_up(.:format)          registrations#new
#   edit_user_registration GET    /users/edit(.:format)             registrations#edit
#        user_registration PATCH  /users(.:format)                  registrations#update
#                          PUT    /users(.:format)                  registrations#update
#                          DELETE /users(.:format)                  registrations#destroy
#                          POST   /users(.:format)                  registrations#create
#            welcome_index GET    /welcome/index(.:format)          welcome#index
#                     root GET    /                                 home#index
#            user_profiles GET    /user_profiles(.:format)          user_profiles#index
#                          POST   /user_profiles(.:format)          user_profiles#create
#         new_user_profile GET    /user_profiles/new(.:format)      user_profiles#new
#        edit_user_profile GET    /user_profiles/:id/edit(.:format) user_profiles#edit
#             user_profile GET    /user_profiles/:id(.:format)      user_profiles#show
#                          PATCH  /user_profiles/:id(.:format)      user_profiles#update
#                          PUT    /user_profiles/:id(.:format)      user_profiles#update
#                          DELETE /user_profiles/:id(.:format)      user_profiles#destroy
#

Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations'}
  get 'welcome/index'
  root "home#index"

  resources :all_pets, only: [:index]
  resources :user do
    resources :pets
  end
  resources :user_profiles do
    member do
      get :add_profile_image
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
