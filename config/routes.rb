Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index, :show,:activate]
  get '/students/:id/activate', to: 'students#activate', as: 'activate_student'
  # get '/students/:id/inactivate', to: 'students#inactivate', as: 'inactivate_student'

end
