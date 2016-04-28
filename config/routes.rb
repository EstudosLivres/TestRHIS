Rails.application.routes.draw do
  # Global Resources
  resources :courses
  resources :students
  resources :classrooms

  # RootRoute main LandingPage
  # root to: 'report#index'
  root to: 'courses#index'
end