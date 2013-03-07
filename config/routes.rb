Lyche::Application.routes.draw do
  
  get 'welcome' => 'pages#welcome'
  get 'menu' => 'pages#menu'
  get 'reservation' => 'pages#reservation'
  get 'information' => 'pages#information'
  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'
  post 'contact' => 'contact#create'
  
  root :to => 'pages#welcome'
  
end

ActionDispatch::Routing::Translator.translate_from_file('config/locales/routes.yml')
