Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get 'home/show'

  namespace :admin do
    resources :users
    root to: "users#index"
  end

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
