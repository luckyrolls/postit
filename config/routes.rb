PostitTemplate::Application.routes.draw do
root to: 'posts#index'
  # get '/posts/:id', to: 'posts#show'
  resources :posts,  except: [:destroy]
end
