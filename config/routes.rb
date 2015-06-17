Rails.application.routes.draw do
  resources :teams

  resources :sessions 
  resources :topics

  put 'topics/:id/vote' => 'topics#vote'
  put 'topics/:id/remove_vote' => 'topics#remove_vote'

  root to: 'teams#index'
end
