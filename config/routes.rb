Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "index#show"

  # Registro
  get "/usuarios" => "usuarios#new"

  # Muro y Perfil
  get "/mi_inicio" => "usuarios#muro", as: "muro"
  get "/mi_perfil" => "usuarios#perfil", as: "mi_perfil"

  # Login/Logout
  get "/login" => "sesiones#new", as: "login"
  post "/login" => "sesiones#create", as: "iniciar_sesion"
  delete "/logout" => "sesiones#destroy", as: "logout"
  get "/registro" => "usuarios#new", as: "registro"

  resources :usuarios, except: [ :index ] do
  	resources :posts, only: [ :new, :create, :show, :destroy ] do
      resources :comentarios, only: [ :new, :create, :destroy ]
  	end
  end
end
