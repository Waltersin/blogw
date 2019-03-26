Rails.application.routes.draw do
  resources :articles

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  # Esto es solo cuando se coloca el domino (nombre de la pagina) ejempo localhost:3000, www.branham.org, es decir sin rutas
end
