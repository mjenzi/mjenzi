Rails.application.routes.draw do
  namespace :admin do
    resources :blogs
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root "application#index"
  get 'web-application-development' => 'application#webDesign', as: :web_design
  get 'internet-of-things' => 'application#internet', as: :internet
  get 'digital-strategy-consulting' => 'application#digital', as: :digital
  get 'big-data-analytics' => 'application#bigData', as: :big_data

  get 'faq' => 'application#faq'
  get 'cloud_solutions' => 'application#cloud_solutions'
  get 'about' => 'application#about'
  get 'services' => 'application#services'
  get 'contacts' => 'application#contact'
  post 'contact_message' => 'application#contact_message'
  root to: 'welcome#index'
  resources :blogs, only: [:index]
end
