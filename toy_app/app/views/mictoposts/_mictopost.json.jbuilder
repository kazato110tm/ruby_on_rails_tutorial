json.extract! mictopost, :id, :content, :user_id, :created_at, :updated_at
json.url mictopost_url(mictopost, format: :json)
