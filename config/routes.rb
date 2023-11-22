Rails.application.routes.draw do
  root 'welcome#index'
  get '/auth/:provider/callback' => 'sessions#create'
  delete '/logout' => 'sessions#destroy', as: :logout

  resources :withdrawals
  
  resources :events do
    resources :tickets
  end

  get 'status' => 'status#index', defaults: { format: 'json' }
end
