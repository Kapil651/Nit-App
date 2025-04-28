Rails.application.routes.draw do
  # Custom 404 error page (renamed)
  get '404', to: 'errors#not_found', as: 'custom_404'

  # Main routes for pages
  root "home#index"
  get "about", to: "about#index"
  get "service", to: "service#index"
  get "services", to: "services#index"
  get "projects", to: "projects#index"
  get "contact", to: "contact#index"
  get "pages", to: "pages#index"
  get 'terms', to: 'pages#terms', as: 'terms'
  get 'privacy_policy', to: 'pages#privacy_policy', as: 'privacy_policy'
  get 'help', to: 'pages#help', as: 'help'
  get 'faq', to: 'pages#faq', as: 'faq'

  # Blog routes
  get 'blog', to: 'blog#index', as: 'blog'
  
  # Team route
  get 'team', to: 'team#index', as: 'team'
  
  # Testimonial route
  get 'testimonial', to: 'testimonial#index', as: 'testimonial'

  # Resources for blogs (if you need RESTful routes)
  resources :blogs, only: [:index]
  resources :projects, only: [:index]  # This is important if you need project-related routes
  
  # Other routes...
end
