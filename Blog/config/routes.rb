Rails.application.routes.draw do

  get 'comments/create'

  get 'comments/destroy'

	#---create page about and contact
  get 'about' => 'page#about', as: :about

  get 'contact' => 'page#contact', as: :contact

  get 'mypost' => 'page#mypost', as: :mypost
# page default
	root to: 'posts#index'
  resources :posts do
  	resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
