require "test_helper"

class GenresControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  
  test "index" do
    get "/genres.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Genre.count, data.length
  end

  test "show" do
    get "/genres/#{Genre.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "description", "created_at", "updated_at"], data.keys
  end
end
