Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  devise_scope :user do
    get 'usrs/sign_up/new', to: 'users/registrations#new'
    post 'users/sign_up/step2', to: 'users/registrations#step2'
    post 'users/sign_up/step3', to: 'users/registrations#step3'
    get 'users/sign_up/step2', to: 'users/registrations#step2'
    get 'users/sign_up/step3', to: 'users/registrations#step3'
    post 'users/sign_up/confirm', to: 'usrs/registrations#confirm'
    get 'users/sign_up/completion', to: 'users/registrations#completion'
    get 'users/login', to: 'users/sessions#new'
    post 'users/login', to: 'users/sessions#create'
    delete 'users/logout', to: 'users/sessions#destroy'
  end
end
