Rails.application.routes.draw do

  root 'post#show'

  get 'welcome/index'
  get 'post/new'
  post "create" => "post#create"

  get 'posts/:id/edit' => 'post#edit' 


  get "posts/:id" => "post#showby", as: :showby


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
