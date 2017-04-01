Rails.application.routes.draw do
  resources :question_choices
  resources :question_items
  resources :questions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'question_items/new/:id', to: 'question_items#new'
  get 'question_choices/new/:id', to: 'question_choices#new'
  
end
