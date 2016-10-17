require 'api_constraints'
Rails.application.routes.draw do
  devise_for :users
	#maps to /api directory in controllers
	#routes would be matched by /api/controllername

	namespace :api, defaults: { format: :json} do
		scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
			resources :users, only: [:show]
		end
	end
end
