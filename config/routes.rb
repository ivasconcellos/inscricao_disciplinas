Rails.application.routes.draw do
  resources :disciplinas
  resources :turmas
  resources :modulos
  devise_for :usuarios
  resources :cursos
  resources :locais
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
