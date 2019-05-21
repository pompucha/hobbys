require 'test_helper'

class HobbysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hobbys_index_url
    assert_response :success
  end

  test "should get show" do
    get hobbys_show_url
    assert_response :success
  end

  test "should get new" do
    get hobbys_new_url
    assert_response :success
  end

  test "should get edit" do
    get hobbys_edit_url
    assert_response :success
  end

end
