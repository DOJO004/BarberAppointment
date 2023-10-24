Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  root 'home#index'

  scope ':email' do
    scope '/admin' do 
      resources :store
    end
  end
end
