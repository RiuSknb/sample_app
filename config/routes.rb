Rails.application.routes.draw do
  get 'lists/new'
  get '/top' => 'homes#top'
  post 'lists' =>'lists#create'
  get 'lists' =>'lists#index'

  # .../lists/1 や .../lists/3 に該当する
  get 'lists/:id' => 'lists#show', as: 'list'


  # get 'lists/edit'
  get 'lists/:id/edit' => 'lists#edit', as: 'edit_list'

  # 更新の場合はPATCHで指定
  patch 'lists/:id' => 'lists#update', as: 'update_list'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
