Rails.application.routes.draw do
  get 'sessions/new'

  resources :accounts
  resources :users
  
  root to: "home#intro"
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/signup',  to: 'accounts#new'
  post '/signup',  to: 'accounts#create'
  
  get 'interact_chart', to: 'charts#interact_chart'
  get 'prediction_chart', to: 'charts#prediction_chart'

  get 'advocacy/index'

  get 'advocacy/import'

  get 'scientific/index'

  get 'scientific/import'

  get 'econ_recession/index'

  get 'econ_recession/import'

  get 'extweather/index'

  get 'extweather/import'
  
  
  

  resources :ccsi_elite do
    collection {post :import}
  end
  root to: "ccsi_elite#index"

  resources :extweather do
    collection {post :import}
  end
  root to: "extweather#index"
  
  resources :econ_recession do
    collection {post :import}
  end
  root to: "econ_recession#index"
  
  resources :scientific do
    collection {post :import}
  end
  root to: "scientific#index"
  
  resources :advocacy do
    collection {post :import}
  end
  root to: "advocacy#index"
  
  get 'ccsi_elite/index'

  get 'ccsi_elite/import'

  get 'csv_parse/rake'

  get 'home/lib'

  get 'home/CCSI'

  get 'home/interact', to: 'users#new'

  get 'home/intro'
  
  get '/ranks', to: 'home#ranking'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
