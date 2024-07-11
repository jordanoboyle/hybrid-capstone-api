require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  
  test "index" do
    get "/posts.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Post.count, data.length
  end

  test "show" do
    get "/posts/#{Post.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "title", "game_title", "genre_id", "system_id", "body", "created_at", "updated_at", "genre", "system", "user"], data.keys
  end

  test "create" do
    assert_difference "Post.count", 1 do
      post "/posts.json", params: { user_id: 1, title: "Some Title", game_title: "test", genre_id: 1, system_id: 1, body: "Some Text"}
      assert_response 200
    end
  end
end
