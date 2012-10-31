ChefTest::Application.routes.draw do
  match '/' =>  'nancat#index'
  match '/nancat' =>  'nancat#index'
  resources :explosion
end
