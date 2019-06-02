Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome', to: "pages#welcome"
  get 'home', to: "pages#welcome"
  get 'fr', to: "pages#welcome"
  get 'en', to: "pages#welcome"
  get 'atolo', to: "pages#welcome"
  get 'fr/atolo', to: "pages#welcome"
  get 'en/atolo', to: "pages#welcome"

  get 'solutions', to: "pages#solutions"
  get 'training', to: "pages#solutions"
  get 'fr/training', to: "pages#solutions"
  get 'en/training', to: "pages#solutions"
  get 'consultancy', to: "pages#solutions"
  get 'fr/consultancy', to: "pages#solutions"
  get 'en/consultancy', to: "pages#solutions"
  get 'communicatie', to: redirect('/solutions#communication-solutions')
  get 'fr/communication', to: redirect('/solutions#communication-solutions')
  get 'en/communication', to: redirect('/solutions#communication-solutions')
  get 'taal', to: redirect('/solutions#languages-solutions')
  get 'fr/langues', to: redirect('/solutions#languages-solutions')
  get 'en/languages', to: redirect('/solutions#languages-solutions')

  get 'about', to: "pages#about"
  get 'onze-aanpak', to: "pages#about"
  get 'fr/notre-approche', to: "pages#about"
  get 'en/our-approach', to: "pages#about"
  get 'over-ons', to: "pages#about"
  get 'fr/equipe', to: redirect('/about#team-anchor')
  get 'en/team', to: redirect('/about#team-anchor')
  get 'atolo-pro-bono', to: redirect('/about#probono-anchor')
  get 'fr/atolo-pro-bono', to: redirect('/about#probono-anchor')
  get 'en/atolo-pro-bono', to: redirect('/about#probono-anchor')

  get 'values', to: "pages#values"
  get 'onze-waarden', to: "pages#values"
  get 'fr/our-values', to: "pages#values"
  get 'en/our-values', to: "pages#values"

  get 'contact', to: "pages#contact"
  get 'fr/contact', to: "pages#contact"
  get 'en/contact', to: "pages#contact"

  get 'disclaimer', to: "pages#disclaimer"
  get 'cookies', to: "pages#cookies"
  get 'fr/disclaimer', to: "pages#disclaimer"
  get 'fr/cookies', to: "pages#cookies"
  get 'en/disclaimer', to: "pages#disclaimer"
  get 'en/cookies', to: "pages#cookies"

  resources :products, only: [ :create, :new, :show, :update, :edit, :destroy, :index ]
  resources :messages, only: [ :create, :index ]

  get '*path', to: "pages#redirect"
end
