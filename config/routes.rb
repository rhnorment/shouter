Rails.application.routes.draw do

  root to: 'homes#show', via: :get

  resource 		:dashboard, 	only: [:show]
  resource 		:session, 		only: [:new, :create, :destroy]
  resources 	:users, 			only: [:show, :new, :create]
  resources		:shouts,			only: [:create, :show]
end
