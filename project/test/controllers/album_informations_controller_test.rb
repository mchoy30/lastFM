require 'test_helper'

class AlbumInformationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @album_information = album_informations(:one)
  end

  test "should get index" do
    get album_informations_url
    assert_response :success
  end

  test "should get new" do
    get new_album_information_url
    assert_response :success
  end

  test "should create album_information" do
    assert_difference('AlbumInformation.count') do
      post album_informations_url, params: { album_information: { date: @album_information.date, play_count: @album_information.play_count } }
    end

    assert_redirected_to album_information_url(AlbumInformation.last)
  end

  test "should show album_information" do
    get album_information_url(@album_information)
    assert_response :success
  end

  test "should get edit" do
    get edit_album_information_url(@album_information)
    assert_response :success
  end

  test "should update album_information" do
    patch album_information_url(@album_information), params: { album_information: { date: @album_information.date, play_count: @album_information.play_count } }
    assert_redirected_to album_information_url(@album_information)
  end

  test "should destroy album_information" do
    assert_difference('AlbumInformation.count', -1) do
      delete album_information_url(@album_information)
    end

    assert_redirected_to album_informations_url
  end
end
