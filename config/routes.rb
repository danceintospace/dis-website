# frozen_string_literal: true

Rails.application.routes.draw do
  get "gallery/add"
  get "gallery/photo"
  mount Avo::Engine, at: Avo.configuration.root_path
  # authenticate :user, lambda(&:admin?) do
  #   # Add routes that require admin authentication here
  # end

  resources :images
  resources :blog_posts, param: :slug, only: %i[index show]
  resources :profiles
  resources :programs

  get 'programs', to: 'programs#index'

  get 'gallery/index'
  get 'tours/index'
  get 'page/index'
  get 'blog/index'
  devise_for :users
  get 'home/index'
  get 'programs/index'

  # Routes for public pages
  get '/about', to: 'public_pages#about'
  get '/team', to: 'public_pages#team'

  get '/projects', to: 'public_pages#projects'
  get '/gallery', to: 'public_pages#gallery'
  get 'faqs_page', to: 'faqs#show', as: 'faqs_page'
  get 'faq', to: 'faqs#show', as: 'faq'

  root 'home#index'
  get '/page', to: 'page#index'
  get '/tours', to: 'tours#index'
end
