require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "create" do
    assert_difference "User.count", 1 do
      post "/users.json", params: { first_name: "Test", last_name: "Test", username: "TestUN", email: "test@test.com", password: "password", password_confirmation: "password" }
      assert_response 201
    end
  end

  test "index" do
    get "/users.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal User.count, data.length
  end

  test "show" do
    get "/users/#{User.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "first_name", "last_name", "email", "username", "admin", "prof_image", "about_me", "created_at", "updated_at"], data.keys
  end

  test "update" do
    user = User.first
    patch "/users/#{user.id}.json", params: { first_name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["first_name"]
  end
end
