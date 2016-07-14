Rails.application.routes.draw do
  devise_for :users
  mount Knock::Engine => "/knock"

end
