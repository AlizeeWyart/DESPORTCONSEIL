Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'dashboard' => "pages#dashboard"
  get 'planning' => "pages#planning"
  get 'messagerie' => "pages#messagerie"
  get 'questionnaire' => "pages#questionnaire"
  get 'conseils' => "pages#conseils"
  get 'objectives' => "pages#objectives"

  resources  :courses, only: [:show]
  resources  :messages, only: [:show]
  resources  :conseils, only: [:show]
end
