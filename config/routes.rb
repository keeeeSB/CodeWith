Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
  }

  namespace :admins do
    root 'static_pages#dashboard'
  end

  get 'up' => 'rails/health#show', as: :rails_health_check

  root 'static_pages#home'
end
