Rails.application.routes.draw do

  root to: 'homes#show', via: :get

  resource 		:dashboard, 		only: [:show]
  
  resource 		:session, 			only: [:new, :create, :destroy]
  
  resources 	:users, 				only: [:show, :new, :create] do
  	post 'follow', to: 'following_relationships#create'
  end
  
  resources		:shouts,				only: [:show]
  
  resources		:text_shouts, 	only: [:create]
  
  resources		:photo_shouts,	only: [:create]
end
