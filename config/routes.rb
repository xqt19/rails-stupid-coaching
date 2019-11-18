Rails.application.routes.draw do
  # get 'questions/ask'
  # get 'questions/answer'
  get 'ask', to: 'questions#ask', as: :ask
  get 'answer', to: 'questions#answer', as: :answer
  post 'answer', to: 'questions#answer'
  # get 'home', to: 'pages#home', as: :home
  root to: 'questions#ask'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
