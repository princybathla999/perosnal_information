Rails.application.routes.draw do

resources :employee_profiles
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'
 mount SubdivisionSelect::Engine, at: 'subdivisions'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
