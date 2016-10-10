Rails.application.routes.draw do
	#maps to /api directory in controllers
	#routes would be matched by /api/controllername
	
	namespace :api, defaults: { format: :json}, 
															constraints: {subdomain: 'api'}, path: '/' do
	end
end
