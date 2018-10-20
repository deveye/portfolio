Rails.application.routes.draw do
  devise_for :users
	resources :categories
	resources :gategories
	resources :portfolios, except: [:show]
	get 'php-items', to: 'portfolios#php'
	get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
	get 'about-me', to: 'pages#about'
	get 'contact', to: 'pages#contact'
	get 'start', to: 'pages#game'
	resources :blogs do 
		member do
			get :toggle_status
		end
	end
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root to: 'pages#home'
end
