# frozen_string_literal: true

Rails.application.routes.draw do
  mount Avo::Engine, at: Avo.configuration.root_path

  # Gallery routes
  get 'gallery/add'
  get 'gallery/photo'
  get '/gallery', to: 'public_pages#gallery' # Keep this for the main gallery page

  # Dance Center routes
  get 'dance_center', to: 'dance_center#show'
  get 'dance_center/download_pdf', to: 'dance_center#download_pdf'

  # REST routes
  resources :images
  resources :blog_posts, param: :slug, only: %i[index show]
  resources :profiles
  resources :programs
  resources :updates, only: [:index]
  

  # Events routes
  get '/events', to: 'events#index'

  # Public pages
  get '/about', to: 'public_pages#about'
  get '/team', to: 'public_pages#team'
  get '/projects', to: 'public_pages#projects'

  # FAQs
  get '/faq', to: 'faqs#show', as: 'faq' # Consolidated to one route

  # Devise routes
  devise_for :users

  # Root and home
  root 'home#index'
  get '/home', to: 'home#index'

  # Page route
  get '/page', to: 'page#index'
end
