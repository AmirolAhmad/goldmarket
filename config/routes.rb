# == Route Map
#
# Prefix Verb URI Pattern Controller#Action
#   root GET  /           welcome#index
#

Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    delete 'sign_out', :to => 'devise/sessions#destroy'
    get '/login' => 'devise/sessions#new'
    get '/register' => 'devise/registrations#new'
  end
  root 'orders#new'

  resources :orders, only: [:new, :create]

  namespace :admin, path: '/master' do
    get "/" => "orders#index", as: 'master'
    resources :orders do
      member do
        patch :complete
        patch :pending
      end
    end
    resources :packages, only: [:index, :edit, :update, :destroy]
    resources :announcements
  end
end
