Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 #get '/blogs' => 'blogs#index'
 #指定されたURLが入力されたら＝＞コントローラー＃アクション		

  resources :blogs
end

