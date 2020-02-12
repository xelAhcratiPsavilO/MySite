Rails.application.routes.draw do
  scope ":locale", locale: /#{I18n.available_locales.join("|")}/ do
    root 'pages#home'
    get 'accommodation' => 'pages#accommodation'
    get 'afterparty' => 'pages#afterparty'
    post 'afterparty' => 'pages#create_afterparty'
    get 'afterparty/index' => 'pages#afterparty_index'
    get 'registry' => 'pages#registry'
    get 'rsvp' => 'pages#rsvp'
    post 'rsvp' => 'pages#create'
    get 'rsvp/index' => 'pages#rsvp_index'
    get 'video' => 'pages#video'
  end
  match '/*locale/*path', to: redirect("/#{I18n.default_locale}/%{path}"), :via => [:get, :post]
  match '*path', to: redirect("/#{I18n.default_locale}/%{path}"), :via => [:get, :post]
  match '', to: redirect("/#{I18n.default_locale}"), :via => [:get, :post]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
