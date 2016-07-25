Rails.application.routes.draw do
  resources :regras
  resources :grupos
  resources :anexo_relatorios_colaborador
  resources :relatorios_colaborador
  resources :colaboradores
  resources :tipos_colaborador
  resources :grupos_demandas
  resources :demandas
  resources :minhas_demandas
  get 'demandas/relatorio/:id', to: 'demandas#relatorio', as: 'relatorio_demanda'
  get 'minhas_demandas/show/:id', to: 'minhas_demandas#show', as: 'show_minha_demanda'
  get 'sessions/new'
  root 'sessions#new'
  resources :usuarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/usuarios', to: 'usuarios#list'
  get    'sign_in'   => 'sessions#new'
  post   'sign_in'   => 'sessions#create'

  match 'sign_out' => 'sessions#destroy', via: [:get, :delete]
end
