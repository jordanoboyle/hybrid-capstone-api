require "test_helper"

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  
  test "index" do
    get "/reviews.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Review.count, data.length
  end

  test "show" do
    get "/reviews/#{Review.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "user_id", "game_title", "subtitle", "genre_id", "systems", "body", "rating", "created_at", "updated_at", "genre", "user"], data.keys
  end

  test "create" do
    assert_difference "Review.count", 1 do
      post "/reviews.json", params: { user_id: User.first.id, game_title: "Some Title", subtitle: "test", genre_id: Genre.first.id, systems: "test systems", body: "Some Text"}
      assert_response 200
    end
  end

  test "update" do
    post = Review.first
    patch "/reviews/#{post.id}.json", params: { title: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["game_title"]
  end

  test "destroy" do
    assert_difference "Review.count", -1 do
      delete "/reviews/#{Review.first.id}.json"
      assert_response 200
    end
  end
end
