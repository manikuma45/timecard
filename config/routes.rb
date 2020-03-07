Rails.application.routes.draw do
  root 'affiliations#index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
  }
  resources :users, only: [:show] do
    collection do
      get 'status'
    end
  end
  resources :affiliations, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :time_cards do
    collection do
      get 'all_index'
      post 'all_index'
    end
  end
end