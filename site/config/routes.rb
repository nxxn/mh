Rails.application.routes.draw do
  match '/contacts' => 'pages#contacts'
  match '/delivery' => 'pages#delivery'
  match '/sizes' => 'pages#sizes'
end
