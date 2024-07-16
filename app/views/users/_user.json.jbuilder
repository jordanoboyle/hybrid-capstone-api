

json.id           user.id
json.first_name   user.first_name
json.last_name    user.last_name
json.email        user.email
json.username     user.username
json.admin        user.admin
json.prof_image   user.prof_image
json.about_me     user.about_me
json.created_at   user.created_at
json.updated_at   user.updated_at

json.faqs  user.faqs
json.reviews user.reviews

json.posts user.posts

# json.favorite_posts user.favorite_posts
json.favorite_posts user.favorite_posts do |favorite_post|
  json.id favorite_post.id
  json.post do
    json.id favorite_post.post.id
    json.title favorite_post.post.title
    json.game_title favorite_post.post.game_title
    json.genre_id favorite_post.post.genre_id
    json.system_id favorite_post.post.system_id
    json.body favorite_post.post.body
    json.created_at favorite_post.post.created_at
    json.updated_at favorite_post.post.updated_at
  end
end