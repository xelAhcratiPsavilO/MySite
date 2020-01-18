Rails.application.routes.draw do
  root 'pages#home'
  get 'accommodations' => 'pages#accommodations'
  get 'afterparty' => 'pages#afterparty'
  post 'afterparty' => 'pages#create_afterparty'
  get 'afterparty/index' => 'pages#afterparty_index'
  get 'registry' => 'pages#registry'
  get 'rsvp' => 'pages#rsvp'
  post 'rsvp' => 'pages#create'
  get 'rsvp/index' => 'pages#rsvp_index'
  get 'video' => 'pages#video'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
