json.extract! favorite_post, :id, :created_at, :updated_at
json.url favorite_post_url(favorite_post, format: :json)
