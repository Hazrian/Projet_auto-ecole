Rails.application.routes.draw do
  resources :formation_types
  root to: 'static_pages#home'
  get 'static_pages/home'
  devise_for :users, path: '', path_names: { sign_in: 'connexion', sign_out: 'deconnexion'}, :controllers => { registrations: 'registrations' }
  resources :users, only: [:show, :index], :path => "utilisateur"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
