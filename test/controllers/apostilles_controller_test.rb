require 'test_helper'

class ApostillesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apostille = apostilles(:one)
  end

  test "should get index" do
    get apostilles_url
    assert_response :success
  end

  test "should get new" do
    get new_apostille_url
    assert_response :success
  end

  test "should create apostille" do
    assert_difference('Apostille.count') do
      post apostilles_url, params: { apostille: { description: @apostille.description } }
    end

    assert_redirected_to apostille_url(Apostille.last)
  end

  test "should show apostille" do
    get apostille_url(@apostille)
    assert_response :success
  end

  test "should get edit" do
    get edit_apostille_url(@apostille)
    assert_response :success
  end

  test "should update apostille" do
    patch apostille_url(@apostille), params: { apostille: { description: @apostille.description } }
    assert_redirected_to apostille_url(@apostille)
  end

  test "should destroy apostille" do
    assert_difference('Apostille.count', -1) do
      delete apostille_url(@apostille)
    end

    assert_redirected_to apostilles_url
  end
end
