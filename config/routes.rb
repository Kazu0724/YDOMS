Rails.application.routes.draw do
  
  
  # 社員
  scope module: :public do
    resources :genres, only: [:index,:show]
    resources :addresses, only: [:index,:show]
    resources :items, only: [:index]
    resources :works, only: [:index,:show] do
      resources :work_comments, only:[:create,:destroy]
      resources :status, only:[:create,:destroy]
    end
    get "employees/list", to: "employees#index"
    get "employees/information/id", to: "employees#show"
    resources :progresses, only:[:index]
    get "/searches", to: "searches#index"
  end

  # 管理者
  namespace :admin do
    resources :genres, only: [:index,:show,:edit,:create,:update]
    resources :addresses, only: [:index,:show,:new,:edit,:create,:update,:destroy]
    resources :items, only: [:index,:edit,:create,:update,:destroy]
    resources :works, only: [:index,:show,:new,:create,:edit,:update,:destroy] do
      resources :work_comments, only:[:create,:destroy]
      resources :status, only:[:create,:destroy]
    end
    resources :employees, only:[:index,:show,:edit,:update,:destroy]
    resources :progresses, only:[:index]
    get "/searches", to: "searches#index"
    end

# 社員
devise_for :employees,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

# 管理者
devise_for :admin,skip: [:passwords], controllers: {
  registrations: "admin/registrations",
  sessions: "admin/sessions"
}

end
