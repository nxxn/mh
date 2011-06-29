Rails.application.routes.draw do
  match "pages/contacts" => "pages#contacts"
  match "pages/delivery" => "pages#contacts"
  match "pages/sizes" => "pages#contacts"
end
