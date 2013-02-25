Lyche::Application.routes.draw do
  
  resource :user_session

  get 'welcome' => 'pages#welcome'
  get 'menu' => 'pages#menu'
  get 'reservation' => 'pages#reservation'
  get 'information' => 'pages#information'
  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'
  
  get 'admin' => 'pages#admin'
  
  namespace :admin do
    resources :users
    resources :dishes
    resources :categories
  end
  
  
  
  root :to => 'pages#welcome'
  
end
ActionDispatch::Routing::Translator.translate_from_file('config/locales/routes.yml')