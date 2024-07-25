require "test_helper"

class TodozsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @todoz = todozs(:one)
  end

  test "should get index" do
    get todozs_url
    assert_response :success
  end

  test "should get new" do
    get new_todoz_url
    assert_response :success
  end

  test "should create todoz" do
    assert_difference("Todoz.count") do
      post todozs_url, params: { todoz: { name: @todoz.name, task: @todoz.task } }
    end

    assert_redirected_to todoz_url(Todoz.last)
  end

  test "should show todoz" do
    get todoz_url(@todoz)
    assert_response :success
  end

  test "should get edit" do
    get edit_todoz_url(@todoz)
    assert_response :success
  end

  test "should update todoz" do
    patch todoz_url(@todoz), params: { todoz: { name: @todoz.name, task: @todoz.task } }
    assert_redirected_to todoz_url(@todoz)
  end

  test "should destroy todoz" do
    assert_difference("Todoz.count", -1) do
      delete todoz_url(@todoz)
    end

    assert_redirected_to todozs_url
  end
end
