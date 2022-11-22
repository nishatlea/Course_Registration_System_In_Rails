Rails.application.routes.draw do
  resources :semesters
  resources :curriculums
  devise_for :users
  root 'home#index'
  get 'home/index'
  get 'test/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
