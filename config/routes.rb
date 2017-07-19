Rails.application.routes.draw do
  resources :places
  devise_for :users, skip: [:sessions]
  as :user do
    get 'sign_in', to: 'devise/sessions#new', as: :new_user_session
    get 'sign_up', to: 'devise/registrations#new', as: :new_user_registrations
    post 'sign_in', to: 'devise/sessions#create', as: :user_session
    delete 'sign_out', to: 'devise/sessions#destroy', as: :destroy_user_session
  end
end
