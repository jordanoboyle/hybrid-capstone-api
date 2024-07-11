require "test_helper"

class SystemsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  
  test "index" do
    get "/systems.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal System.count, data.length
  end

  test "show" do
    get "/systems/#{System.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "company", "created_at", "updated_at"], data.keys
  end
end

