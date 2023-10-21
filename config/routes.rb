Rails.application.routes.draw do
  root to: "top_pages#top"

  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
  
  #get 'japan_and_overseas_test_categories', to: 'japan_and_overseas_test_categories#index', as: 'place'

  resources :users, only: %i[new create]
  resource :profile, only: %i[show edit update]
  resources :japan_and_overseas_test_categories, only: %i[index], as: :category do
    resources :quizzes, only: %i[index]
  end
    
end
