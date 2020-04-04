Rails.application.routes.draw do

	devise_for :users

	root 'books#top'

	resources :books

	resources :users, only: [:show, :edit, :update]
	# onlyを使って不必要なルーティングを制限
end