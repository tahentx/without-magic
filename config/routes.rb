Rails.application.routes.draw do
  get 'students' => 'students#index'
  get 'students/:id' => 'students#show', as: 'student', id: /\d+/
  root to: 'students#index'
  get 'students/new' => 'students#new', as: 'new_student'
  post 'students' => 'students#create'
  get 'students/:id/edit' => 'students#edit', as: 'edit_student', id: /\d+/
  patch 'students/:id' => 'students#update'
  delete 'students/:id' => 'students#destroy', as: 'destroy_student', id: /\d+/
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
