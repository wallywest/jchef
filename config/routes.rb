ChefTest::Application.routes.draw do
  root :to =. "nancat#index"
  match '/' =>  'nancat#index'
  match '/nancat' =>  'nancat#index'
  resources :explosion
end
