Rails.application.routes.draw do
  get 'welcome/index'

  resources :animals

  root 'animals#index'

end
