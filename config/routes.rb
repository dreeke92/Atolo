Rails.application.routes.draw do
  devise_for :users

  scope '(:locale)', locale: /fr|nl|de/ do
    root to: 'pages#welcome'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get 'welcome', to: "pages#welcome"
    get 'solutions', to: "pages#solutions"
    get 'about', to: "pages#about"
    get 'values', to: "pages#values"
    get 'contact', to: "pages#contact"
    get 'disclaimer', to: "pages#disclaimer"
    get 'home', to: "pages#welcome"
    get 'atolo', to: "pages#welcome"
    get 'training', to: "pages#solutions"
    get 'consultancy', to: "pages#solutions"
    get 'cookies', to: "pages#cookies"

    resources :products, only: [ :create, :new, :show, :update, :edit, :destroy, :index ]
    resources :messages, only: [ :create ]
  end

  # get 'fr', to: "pages#welcome"
  # get 'en', to: "pages#welcome"
  # get 'fr/atolo', to: "pages#welcome"
  # get 'en/atolo', to: "pages#welcome"

  # get 'training', to: "pages#solutions"
  # get 'fr/training', to: "pages#solutions"
  # get 'en/training', to: "pages#solutions"

  # get 'consultancy', to: "pages#solutions"
  # get 'fr/consultancy', to: "pages#solutions"
  # get 'en/consultancy', to: "pages#solutions"

  get 'communicatie', to: redirect('/nl/solutions#communication-solutions')
  get 'fr/communication', to: redirect('/fr/solutions#communication-solutions')
  get 'en/communication', to: redirect('/solutions#communication-solutions')

  get 'taal', to: redirect('/nl/solutions#languages-solutions')
  get 'fr/langues', to: redirect('/fr/solutions#languages-solutions')
  get 'en/languages', to: redirect('/solutions#languages-solutions')

  get 'onze-aanpak', to: redirect('/nl/about')
  get 'fr/notre-approche', to: redirect('/fr/about')
  get 'en/our-approach', to: "pages#about"
  get 'over-ons', to: redirect('/nl/about')
  get 'fr/equipe', to: redirect('/fr/about#team-anchor')
  get 'en/team', to: redirect('/about#team-anchor')

  get 'atolo-pro-bono', to: redirect('/about#probono-anchor')
  get 'fr/atolo-pro-bono', to: redirect('/fr/about#probono-anchor')
  get 'nl/atolo-pro-bono', to: redirect('/nl/about#probono-anchor')
  get 'en/atolo-pro-bono', to: redirect('/about#probono-anchor')

  get 'onze-waarden', to: redirect('/nl/values')
  get 'fr/our-values', to: redirect('/fr/values')
  get 'en/our-values', to: "pages#values"

  get 'fr/contact', to: redirect('/fr/contact')
  get 'en/contact', to: "pages#contact"

  # get 'cookies', to: "pages#cookies"
  # get 'fr/disclaimer', to: "pages#disclaimer"
  # get 'fr/cookies', to: "pages#cookies"
  # get 'en/disclaimer', to: "pages#disclaimer"
  # get 'en/cookies', to: "pages#cookies"

  get 'test', to: redirect("http://www.webtrainer.be/ASP/Accent/company/cp135/")
  get 'fr/test', to: redirect("http://www.webtrainer.be/ASP/Accent/company/cp135/")
  get 'nl/test', to: redirect("http://www.webtrainer.be/ASP/Accent/company/cp135/")
  get 'de/test', to: redirect("http://www.webtrainer.be/ASP/Accent/company/cp135/")

  get '*path', to: "pages#redirect"
end
