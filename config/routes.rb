Rails.application.routes.draw do
  resources :students
  resources :administrator_has_students
  resources :administrators
  resources :administrator_has_teachers
  resources :teachers
  resources :materials
  resources :apostilles
  resources :subjects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
