Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  root 'high_voltage/pages#show', id: 'root'
end
