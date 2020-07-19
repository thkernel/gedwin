json.extract! request_imputation, :id, :service_id, :receiver_id, :request_id, :status, :user_id, :created_at, :updated_at
json.url request_imputation_url(request_imputation, format: :json)
