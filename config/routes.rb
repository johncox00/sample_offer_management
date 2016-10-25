Rails.application.routes.draw do
  root to: 'welcome#index'
  resources :promotions do
    resources :promotion_actions
  end

  resources :offers do
    resources :offer_actions
    resources :offer_rules
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
