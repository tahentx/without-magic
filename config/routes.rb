Rails.application.routes.draw do
  get 'students' => 'students#index'
  get 'students/:id' => 'students#show', as: 'student', id: /\d+/
  root to: 'students#index'
  get 'students/new' => 'students#new', as: 'new_student'
  post 'students' => 'students#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
