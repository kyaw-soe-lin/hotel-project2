Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	get 'contacts/new', to: 'contacts#new', as: 'new_contact'
  post 'contacts', to: 'contacts#create'
  get 'contacts/:id', to: 'contacts#show', as: 'contact'
  get 'hotels/:id', to: 'hotels#show', as: 'hotel'
  root 'hotels#index'
  get 'hotels', to: 'hotels#index'
  get 'prefectures/:id', to: 'prefectures#show', as: 'prefecture'
  resources :hotels do
    resources :reviews
  end
end
