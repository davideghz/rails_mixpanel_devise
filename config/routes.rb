Rails.application.routes.draw do
  devise_for :users, :controllers => { sessions: "sessions",
                                       registrations: "registrations" }
  root 'static_pages#home'

  get  'page_one'     => 'static_pages#page_one'
  get  'page_two'     => 'static_pages#page_two'
  get  'page_three'   => 'static_pages#page_three'

end
