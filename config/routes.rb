Rails.application.routes.draw do

	resources :projects
	root 'welcome#index'
	get "service/project"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
