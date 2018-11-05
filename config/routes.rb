Rails.application.routes.draw do
  get "login", to: "sessions#new", as: "login"
  get "logout", to: "sessions#destroy", as: "logout"
  get "signup_students", to: "students#new", as: "signup_students"
  get "signup_teachers", to: "teachers#new", as: "signup_teachers"
  get "signup_administrators", to: "administrators#new", as: "signup_administrators"

  get 'cursinho/index'

  get'cursinho/trabalheconosco'

  get'subjects/matematica'

  get'subjects/fisica'

  get'subjects/quimica'

  get'subjects/historia'

  get'subjects/geografia'

  get'subjects/filosofia'

  get'subjects/sociologia'

  get'subjects/linguas'

  get'subjects/ingles'

  get'subjects/biologia'

  get'sobre/quemsomos'

  get'sobre/sobrenos'

 
  
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

  root to: "application#_navigation"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
