# frozen_string_literal: true

Rails.application.routes.draw do
  root "tweeets#index"

  devise_for :users, controllers: { registrations: "users/registrations" }

  devise_scope :user do
    get "/users/sign_out" => "devise/sessions#destroy"
  end
  resources :tweeets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
