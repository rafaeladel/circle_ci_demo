Rails.application.routes.draw do
  root "articles#index"
  resources :articles do 
    post "/archive", to: "articles#toggle_archive"
    resources :comments
  end
end
