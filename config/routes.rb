Rails.application.routes.draw do
  mount SwaggerUiEngine::Engine, at: "/"
  resources :greetings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end