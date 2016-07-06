Rails.application.routes.draw do
  resources :colaboradores
  resources :tipos_colaborador
  resources :grupos_demandas
  resources :demandas
  get 'sessions/new'
  root 'sessions#new'
  resources :usuarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/usuarios', to: 'usuarios#list'
  get    'sign_in'   => 'sessions#new'
  post   'sign_in'   => 'sessions#create'

  match 'sign_out' => 'sessions#destroy', via: [:get, :delete]
end
