Rails.application.routes.draw do
  
  #resources :request_companies
  #resources :request_subjects
  resources :general_settings
  resources :task_types
  resources :ticket_users
  resources :activity_logs
  get 'oauth2callback' => 'static_pages#set_google_drive_token'
  get 'static_pages/files' => 'static_pages#files'

  get "browse/:uid" => "folders#browse", :as => "browse"
  get "browse/:uid/new" => "folders#new", :as => "new_sub_folder"
  get "create_file" => "folders#create_file", as: :create_file
  
  get "folder/:uid/edit" => "folders#edit", as: :edit_folder
  get "folder/:uid/delete" => "folders#delete", as: :folder_delete
  get "/downloadfile/:key" => "folders#download_drive_file", as: :download_file
  
  resources :folders , except: [:edit] do
  end

  
  resources :tickets do   
    get "delete"
  end
  
  scope "settings" do
    resources :smtp_configs
    #get "smtp" => "smtp_configs#smtp_configs", as: :smtp_configs
    #get "smtp/new" => "smtp_configs#new_smtp_config", as: :new_smtp_config
    #get "smtp/edit/:id" => "smtp_configs#edit_smtp_config", as: :edit_smtp_config
  end
  #get "/settings/smtp" => "smtp_configs#smtp_configs", as: :smtp_settings


  scope "account" do 
    resources :profiles 
    get "profile/:uid" => "profiles#edit", as: :edit_account
  end

 
  get "custom_users/get_divisions" => "custom_users#get_divisions"
  get "custom_users/get_services" => "custom_users#get_services"
  
  get "imputations/get_divisions" => "imputations#get_divisions"
  get "imputations/get_services" => "imputations#get_services"
  get "imputations/get_profiles" => "imputations#get_profiles"


  
  resources :notifications
  resources :comments
  
  resources :documents do   
    get "delete"
  end
  
  resources :task_time_trackings do   
    get "delete"
  end
  resources :divisions do   
    get "delete"
  end
  resources :directions do   
    get "delete"
  end
  resources :imputation_items do   
    get "delete"
  end

  resources :imputations, except: [:edit] do   
    get "delete"
    
  end
  post "imputations/new"
  #get "imputations/new", controller: "imputations", action: :new
  #post "imputations/new", controller: "imputations", action: :create




  get "imputation/show/:uid" => "imputations#show", as: :show_imputation
  get "imputation/edit/:uid" => "imputations#edit", as: :edit_imputation
  get "arrival-mail/show/:uid" => "arrival_mails#show", as: :show_arrival_mail
  get "document/show/:uid" => "documents#show", as: :show_document
  get "request/show/:uid" => "requests#show", as: :show_request
  get "setup/organization" => "organizations#setup", as: :setup_organization

 
  get "/get_kairos_data" => "requests#get_kairos_data"
  get "/get_kairos_annee_scolaire" => "requests#get_kairos_annee_scolaire"


  # From front request.
  #get "/get_kairos_data" => "requests#get_kairos_data"
  #get "/get_kairos_annee_scolaire" => "requests#get_kairos_annee_scolaire"

  get "requests/:uid/pdf" => "requests#generate_pdf", as: :generate_pdf

  resources :requests do   
    get "delete"
  end
  resources :request_types do   
    get "delete"
  end
  #root 'home#index'
  resources :tenants do   
    get "delete"
  end
  
  resources :tasks do    
    get "delete"

   
  end

  resources :registers do    
    get "delete"
  end

 

  resources :task_statuses do    
    get "delete"
  end

  
  
  resources :departure_mails do     
    get "delete"
    get "archive" 
    get "archives"
    
    collection do    
      get "get_reference" => "departure_mails#get_reference"
    end


    collection do    
      get "get_natures" => "departure_mails#get_natures"
      get "get_folders" => "departure_mails#get_folders"
      get "get_supports" => "departure_mails#get_supports"
      get "get_correspondents" => "departure_mails#get_correspondents"
    end


  end

  
  resources :arrival_mails , except: [:show] do   
    get "delete"
    get "archive"
    get "archives"

    
    collection do    
      get "get_reference" => "arrival_mails#get_reference"
    end

    collection do    
      get "get_natures" => "arrival_mails#get_natures"
      get "get_folders" => "arrival_mails#get_folders"
      get "get_supports" => "arrival_mails#get_supports"
      get "get_correspondents" => "arrival_mails#get_correspondents"
    end
  end

  
  resources :options

  get "/get/last_correspondent" => "correspondents#last_correspondent"
  resources :correspondents do    
    get "delete"
  end
  
  resources :correspondent_types do   
    get "delete"
  end
  



  resources :features do   
    get "delete"
  end

  resources :services do   
    get "delete"
  end
  get "settings/company/:uid" => "organizations#show", as: :show_organization
  get "settings/company/:uid/edit" => "organizations#edit", as: :edit_organization

  resources :organizations, except: [:show, :edit] do      
    get "delete"
  end
  

  get "/get/last_folder" => "folders#last_folder"

  resources :folders do   
    get "delete"
  end

  resources :binders do   
    get "delete"
  end

  
  
  resources :organization_types do     
    get "delete"
  end

 

  get "request/new" => "requests#new_front_request" , as: :new_front_request
  get "request-success" => "requests#front_request_success" , as: :front_request_success
	#post "/companies/new/" => "companies#create", as: :create_company
	#get "/companies/new/" => "companies#new", as: :new_company
	#get "/organization/:id" => "organizations#show", as: :show_organization
	#get "/companies/edit/:id" => "companies#edit", as: :edit_company
	#patch "/companies/:id"  => "companies#update", as: :company


  get "/get/last_nature" => "natures#last_nature"


  resources :natures do     
    get "delete"
    #get "last_nature" => "natures#last_nature", as: :last_nature

    
  end


  get "/get/last_support" => "supports#last_support"

  resources :supports do      
    get "delete"
  end

  resources :registries do     
    get "delete"
  end

  
  
  #devise_for :users
  resources :permissions do   
    get "delete"
  end
  resources :roles do  
    get "delete"
  end

  get "/dashboard" => "dashboard#index" , as: :dashboard

  #get "/register" => "registrations#register", as: :registration

  get "arrival_mails/bulk_archive/modal/" => "arrival_mails#bulk_archive_modal", as: :arrival_mails_bulk_archive_modal
  post "arrival_mails/bulk_archive" => "arrival_mails#bulk_archive", as: :arrival_mails_bulk_archive


  get "/departure_mails/bulk_archive/modal/" => "departure_mails#bulk_archive_modal", as: :departure_mails_bulk_archive_modal
  post "/departure_mails/bulk_archive" => "departure_mails#bulk_archive", as: :departure_mails_bulk_archive

  get "archives/arrival_mails" => "arrival_mails#archives", as: :arrival_mails_archives
  get "archives/departure_mails" => "departure_mails#archives", as: :departure_mails_archives

  get "arrival_mail/to_archive/:id" => "arrival_mails#to_archive", as: :arrival_mail_to_archive
  get "departure_mail/to_archive/:id" => "departure_mails#to_archive", as: :departure_mail_to_archive

  #get "arrival/mail/:id/imputations" => "imputations#index" , as: :arrival_mail_imputations
  get "arrival/mail/:id/tasks" => "tasks#index" , as: :arrival_mail_tasks
  #get "imputation/:id/tasks" => "tasks#index" , as: :imputation_tasks
  get "taks/all" => "tasks#search_tasks", as: :search_tasks

  get "/users"     => "custom_users#index", as: :all_users 
	get "/users/unregistered"     => "custom_users#unregistered", as: :unregistered_commission_percentage 
	post "/users/new"     => "custom_users#create", as: :create_user
	get "/users/new"     => "custom_users#new", as: :new_user
	get "/user/edit/:id" => "custom_users#edit", as: :edit_user
	patch "/user/update/:id" => "custom_users#update", as: :update_user
	delete "/user/destroy/:id" => "custom_users#destroy", as: :destroy_user
  get "/user/delete/:id" => "custom_users#delete", as: :delete_user
  
  get "/setup/admin" => "admin_setup#new", as: :new_admin
  post "/setup/admin/create" => "admin_setup#create", as: :create_admin
  get "utilities/backup" => "utilities#show_backup", as: :show_backup
  post 'utilities/backup' => "utilities#backup_database", as: :backup_database


	get "/user/enable/:id" => "custom_users#get_enable", as: :get_enable_user_account
	post "/user/enable/:id" => "custom_users#post_enable", as: :post_enable_user_account
	get "/user/disable/:id" => "custom_users#get_disable", as: :get_disable_user_account
	post "/user/disable/:id" => "custom_users#post_disable", as: :post_disable_user_account


  devise_for :users, path: '', controllers: { 
    registrations: "users/registrations",
    confirmations: 'users/confirmations',
    passwords: "users/passwords",
    sessions: "users/sessions"
        
    }, 
    path_names: {
        sign_in: 'login', 
        sign_out: 'logout', 
        password: 'secret', 
        confirmation: 'verification', 
        unlock: 'unblock', 
        registration: 'signup', 
        sign_up: '' 
    }
   
    devise_scope :user do
      root to: "users/sessions#new"
      authenticated :user do
        root 'dashboard#index', as: :authenticated_root
      end
  
      unauthenticated do
        root 'users/sessions#new', as: :unauthenticated_root
      end
    end


    # Dynamic error pages
    get "/404", to: "errors#not_found"
    get "/422", to: "errors#unacceptable"
    get "/500", to: "errors#internal_error"

    mount Ckeditor::Engine => '/ckeditor'
  

end