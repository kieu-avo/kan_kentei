Rails.application.routes.draw do
  root to: "top_pages#top"

  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
  
  #get 'japan_and_overseas_test_categories', to: 'japan_and_overseas_test_categories#index', as: 'place'
  get 'quizzes/:category_name', to: 'quizzes#index'

  resources :users, only: %i[new create]
  resource :profile, only: %i[show edit update]
  resources :test_categories, only: %i[index], as: :categories do
    resources :quizzes, only: %i[index show] do
      post 'calculate_score', on: :collection
    end
    resources :reviews, only: %i[index new create]
    resources :test_comments, only: %i[index new create show]
  end

  
  

end
