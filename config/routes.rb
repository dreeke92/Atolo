Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome', to: "pages#welcome"
  get 'home', to: "pages#home"
  get 'solutions', to: "pages#solutions"

end
