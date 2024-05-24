Rails.application.routes.draw do
  resources :galleries
  resources :images
  
  get 'gallery/index'
  get 'tours/index'
  get 'page/index'
  get 'blog/index'
  devise_for :users
  devise_for :models
  get 'home/index'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # Routes for public pages
  get '/about', to: 'public_pages#about'
  get '/team', to: 'public_pages#team'
  get '/programs', to: 'public_pages#programs'
  get '/projects', to: 'public_pages#projects'
  get '/gallery', to: 'public_pages#gallery'
  get 'faqs_page', to: 'faqs#show', as: 'faqs_page'
  get 'faq', to: 'faqs#show', as: 'faq'
  # get "/blog_posts/new", to: "blog_posts#new", as: :new_blog_post
  # get "/blog_posts/:id", to: "blog_posts#show", as: :blog_post
  # patch "/blog_posts/:id", to: "blog_posts#update"
  # delete "/blog_posts/:id", to: "blog_posts#destroy"
  # get "/blog_posts/:id/edit", to: "blog_posts#edit", as: :edit_blog_post
  # post "/blog_posts", to: "blog_posts#create", as: :blog_posts
  # put
  # patch
  # delete


  # Defines the root path route ("/")
  resources :blog_posts
  resources :profiles
  root "home#index"
  get '/page', to: 'page#index'
  get '/tours', to: 'tours#index'
  get '/gallery', to: 'gallery#index'

  end
