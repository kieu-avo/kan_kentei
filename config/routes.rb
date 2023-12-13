Rails.application.routes.draw do
  root to: "top_pages#top"
  get 'terms', to: 'top_pages#terms'
  get 'policy', to: 'top_pages#policy'

  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  #Line Messaging
  post '/callback', to: 'linebot#callback' 
  
  get 'passed_lists', to: 'passed_lists#index'
  get 'sample_quiz', to: 'quizzes#sample_quiz'

  resources :users, only: %i[new create]
  resources :password_resets, only: %i[new create edit update]
  resource :profile, only: %i[show edit update]
  resources :test_categories, only: %i[index], as: :categories do
    get 'search_result', on: :collection
    
    resources :quizzes, only: %i[index show] do
      post 'calculate_score', on: :collection
    end
    resources :reviews, only: %i[index new create]
    resources :test_comments, only: %i[index new create show edit update] do
      collection do
        get 'search_content'
        get 'search_user_name'
        get 'search_souvenir'
      end
    end
  end

  #開発のみの使用
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
