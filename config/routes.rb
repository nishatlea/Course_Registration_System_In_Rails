Rails.application.routes.draw do

  resources :enrolls do
  collection do
    post :semester_course
  end
end
  resources :students
  resources :semesters
  resources :curriculums
  resources :admin do
    collection do
      get :create_curriculum
      get :test_form
    end
  end

  resources :semester_curriculums



  devise_for :users
  root 'home#index'
  get 'home/index'
  get 'test/index'
  # get 'admin/index'
  # get 'curriculum/index'
  get 'semester/index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
