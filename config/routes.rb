Rails.application.routes.draw do
   root "articles#index"
   resources :articles
   get 'login', to: redirect('/auth/google_oauth2'), as: 'login'
   get 'logout', to: 'sessions#destroy', as: 'logout'
   get 'auth/:provider/callback', to: 'sessions#create'
   get 'auth/failure', to: redirect('/')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
