Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get 'home/show'

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
