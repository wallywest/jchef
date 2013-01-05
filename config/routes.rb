ChefTest::Application.routes.draw do
  match '/' =>  'explosion#index'
  match '/nancat' =>  'nancat#index'
  resources :explosion

  resources :dashboard
  resources :project
end
