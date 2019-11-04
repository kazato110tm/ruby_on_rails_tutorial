require 'test_helper'

class MictopostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mictopost = mictoposts(:one)
  end

  test "should get index" do
    get mictoposts_url
    assert_response :success
  end

  test "should get new" do
    get new_mictopost_url
    assert_response :success
  end

  test "should create mictopost" do
    assert_difference('Mictopost.count') do
      post mictoposts_url, params: { mictopost: { content: @mictopost.content, user_id: @mictopost.user_id } }
    end

    assert_redirected_to mictopost_url(Mictopost.last)
  end

  test "should show mictopost" do
    get mictopost_url(@mictopost)
    assert_response :success
  end

  test "should get edit" do
    get edit_mictopost_url(@mictopost)
    assert_response :success
  end

  test "should update mictopost" do
    patch mictopost_url(@mictopost), params: { mictopost: { content: @mictopost.content, user_id: @mictopost.user_id } }
    assert_redirected_to mictopost_url(@mictopost)
  end

  test "should destroy mictopost" do
    assert_difference('Mictopost.count', -1) do
      delete mictopost_url(@mictopost)
    end

    assert_redirected_to mictoposts_url
  end
end
