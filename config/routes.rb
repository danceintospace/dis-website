Rails.application.routes.draw do
  resources :galleries
  resources :images
  resources :blog_posts, only: [:index, :show, :new, :create] # Ensure only the index and show routes are public
  resources :profiles

  get 'gallery/index'
  get 'tours/index'
  get 'page/index'
  get 'blog/index'
  devise_for :users
  devise_for :models
  get 'home/index'

  # Routes for public pages
  get '/about', to: 'public_pages#about'
  get '/team', to: 'public_pages#team'
  get '/programs', to: 'public_pages#programs'
  get '/projects', to: 'public_pages#projects'
  get '/gallery', to: 'public_pages#gallery'
  get 'faqs_page', to: 'faqs#show', as: 'faqs_page'
  get 'faq', to: 'faqs#show', as: 'faq'

  root 'home#index'
  get '/page', to: 'page#index'
  get '/tours', to: 'tours#index'
  get '/gallery', to: 'gallery#index'
end
