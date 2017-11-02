Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'students' => 'students#index'
  get 'students/:id' => 'students#show', as: 'student', id: /\d+/
  root to: 'students#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
