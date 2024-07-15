require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "create" do
    post "/users.json", params: { first_name: "MyString", last_name: "MyString", username: "123MyString", email: "mystring123", password: "password", password_confirmation: "password" }
    post "/sessions.json", params: { email: "mystring123", password: "password" }
    assert_response 201
  
    data = JSON.parse(response.body)
    assert_equal ["jwt", "email"], data.keys
  end
  
  # setup do
  #   User.create!(email: "newUser", username: "userTest", password: "password", password_confirmation: "password")
  # end

  # test "create" do
  #   post "/sessions.json", params: { email: "MyString", password: "password" }
  #   assert_response 201

  #   data = JSON.parse(response.body)
  #   assert_equal ["jwt", "email", "user_id"], data.keys
  # end
end
