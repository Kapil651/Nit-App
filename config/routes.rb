Rails.application.routes.draw do
  # Custom 404 error page (renamed)
  get '404', to: 'errors#not_found', as: 'custom_404'

  # Main routes for pages
  root "home#index"
  get "about", to: "home#about"
  get "service", to: "home#service"
  get "services", to: "home#services"
  get "projects", to: "home#project"
  get "contact", to: "home#contact"
  get "pages", to: "home#pages"
  get 'terms', to: 'pages#terms', as: 'terms'
  get 'privacy_policy', to: 'pages#privacy_policy', as: 'privacy_policy'
  get 'help', to: 'pages#help', as: 'help'
  get 'faq', to: 'pages#faq', as: 'faq'

  # Blog routes
  get 'blog', to: 'home#blog', as: 'blog'
  
  # Team route
  get 'team', to: 'home#team', as: 'team'
  
  # Testimonial route
  get 'testimonial', to: 'home#testimonial', as: 'testimonial'

  # Resources for blogs (if you need RESTful routes)
  resources :blogs, only: [:index]
  resources :projects, only: [:index]  # This is important if you need project-related routes
  
  # Other routes...
end
