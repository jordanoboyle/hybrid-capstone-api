

json.id   post.id
json.title   post.title
json.game_title   post.game_title
json.genre_id   post.genre_id
json.system_id   post.system_id
json.body   post.body
json.created_at   post.created_at
json.updated_at   post.updated_at

json.image_url_one post.image_url_one
json.image_url_two post.image_url_two

json.post_comments post.post_comments do |post_comment|
  json.id   post_comment.id
  json.user_id   post_comment.user_id
  json.post_id   post_comment.post_id
  json.body   post_comment.body
  json.created_at   post_comment.created_at
  json.updated_at   post_comment.updated_at

  json.user do 
    json.id post_comment.user.id
    json.username post_comment.user.username
    json.prof_image post_comment.user.prof_image
    
  end
end



#Association data
json.genre    post.genre
json.system   post.system


json.user do 
  json.id post.user.id
  json.email post.user.email
  json.username post.user.username
  json.first_name post.user.first_name
  json.last_name post.user.last_name
end


