Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "details#index"

  get "departments" => "departments#index"
  get "employees"  => "employees#index"

  get "managers" => "managers#index"
  get "records"  => "records#index"

end
