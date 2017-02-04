Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "application#index"
  get 'web-application-development' => 'application#webDesign', as: :web_design
  get 'internet-of-things' => 'application#internet', as: :internet
  get 'digital-strategy-consulting' => 'application#digital', as: :digital
  get 'big-data-analytics' => 'application#bigData', as: :big_data

  post 'contact_message' => 'application#contact_message'

end
