Rails.application.routes.draw do
  get '/login', to: "sessions#new", as: "login"
  get '/logout', to: "sessions#destroy", as: "logout"
  
  get 'signup_students', to: "students#new", as: "signup_students"
  get 'signup_teachers', to: "teachers#new", as: "signup_teachers"
  get 'signup_administrators', to: "administrators#new", as: "signup_administrators"

  get 'home', to: "cursinho#index", as: "home"
  get 'trabalheconosco', to: "cursinho#trabalheconosco", as: "trabalheconosco"
  get 'apoio', to: "cursinho#apoio", as: "apoio"
  get 'contato', to: "cursinho#contato", as: "contato"

  get 'quemsomos', to: "sobre#quemsomos", as: "quemsomos"
  get 'sobrenos', to: "sobre#sobrenos", as: "sobrenos"

  get '/materials/:id/download', to: "materials#download", as: "material_download"
  get '/apostilles/:id/download', to: "apostilles#download", as: "apostille_download"

  resources :sessions
  
  resources :students do
    resources :users, module: :students
  end

  resources :administrators do
    resources :users, module: :administrators
  end

  resources :teachers do
    resources :users, module: :teachers
  end

  resources :materials

  resources :apostilles

  resources :subjects

  root to: "cursinho#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
