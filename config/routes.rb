Lyche::Application.routes.draw do
  
  get 'welcome' => 'pages#welcome'
  
  root :to => 'pages#welcome'
  
end
