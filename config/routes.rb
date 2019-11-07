Rails.application.routes.draw do
  get 'formation_types/new'
  get 'formation_types/create'
  get 'formation_types/update'
  get 'formation_types/edit'
  get 'formation_types/destroy'
  get 'formation_types/show'
  get 'formation_types/index'
  root to: 'static_pages#home'
  get 'static_pages/home'
  devise_for :users, path: '', path_names: { sign_in: 'connexion', sign_out: 'deconnexion'}, :controllers => { registrations: 'registrations' }
  resources :users, only: [:show, :index], :path => "utilisateur"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
