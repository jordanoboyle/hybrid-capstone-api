

json.id   post.id
json.title   post.title
json.game_title   post.game_title
json.genre_id   post.genre_id
json.system_id   post.system_id
json.body   post.body
json.created_at   post.created_at
json.updated_at   post.updated_at

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


