Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users
  resources :questions
  resources :answers
  post "/follow" => "questions#follow", as: :follow
  get "/my_questions" => "home#my_questions", as: :my_questions
  get "/my_answers" => "home#my_answers", as: :my_answers
  get "/my_topics" => "home#my_topics", as: :my_topics
  get "/my_followings" => "home#my_followings", as: :my_followings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
