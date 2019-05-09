Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome', to: "pages#welcome"
  get 'home', to: "pages#home"
  get 'solutions', to: "pages#solutions"
  get 'about', to: "pages#about"
  get 'values', to: "pages#values"
  get 'contact', to: "pages#contact"
  resources :products, only: [ :create, :new, :show, :update, :edit, :destroy, :index ]
end
