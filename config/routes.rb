Rails.application.routes.draw do

	devise_for :users

	root 'top2#top'

	get 'home/about' => 'top2#about'

	get 'users' => 'users#index'

	resources :books

	resources :users, only: [:show, :edit, :update]
	# onlyを使って不必要なルーティングを制限
end