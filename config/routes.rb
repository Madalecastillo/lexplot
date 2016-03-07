Rails.application.routes.draw do

# root
root 'static_pages#home'

devise_for :admin_users, ActiveAdmin::Devise.config
ActiveAdmin.routes(self)
devise_for :users


resources :contracts
resources :managers
resources :categories
resources :support_tickets

 # static pages routes
get 'home', to: 'static_pages#home'
get 'about', to: 'static_pages#about_us'
get 'contact', to: 'static_pages#contact'

#products

get 'products', to: 'static_pages#products'
  
end
