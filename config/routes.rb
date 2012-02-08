Lyche::Application.routes.draw do
  
  get 'welcome' => 'pages#welcome'
  get 'menu' => 'pages#menu'
  get 'reservation' => 'pages#reservation'
  get 'information' => 'pages#information'
  get 'about' => 'pages#about'
  get 'contact' => 'pages#about'
  
  root :to => 'pages#welcome'
  
end
