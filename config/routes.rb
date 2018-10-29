Rails.application.routes.draw do
  get 'sessions/new'

  root to: "students#index"
  
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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
