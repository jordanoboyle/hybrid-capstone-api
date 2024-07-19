

json.id    post_comment.id
json.user_id    post_comment.user_id
json.post_id    post_comment.post_id
json.body    post_comment.body
json.created_at    post_comment.created_at
json.updated_at    post_comment.updated_at



json.user do 
  json.id            post_comment.user.id
  json.prof_image    post_comment.user.prof_image
  json.username      post_comment.user.username   
end