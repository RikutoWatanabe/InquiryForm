Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'problems' => 'problems#index'	#入力画面
  post 'problems/confirm' => 'problems#confirm'	#確認画面
  post 'problems/thanks' => 'problems#thanks'	#送信完了画面

  root to: 'problems#index'

end
