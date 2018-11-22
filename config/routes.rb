Rails.application.routes.draw do
  get 'take_test/quiz_start'

  resources :submissions
  resources :question_banks
  devise_for :users
  get 'dashboard/index'

  resources :answers
  resources :questions
  root 'dashboard#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
