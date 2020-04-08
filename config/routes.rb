Rails.application.routes.draw do

	devise_for :users

	root 'books#top'

	get 'home/about' => 'books#about'

	get 'users' => 'users#index'

	resources :books

	resources :users, only: [:show, :edit, :update]
	# onlyを使って不必要なルーティングを制限
end