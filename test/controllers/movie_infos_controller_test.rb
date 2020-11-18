require 'test_helper'

class MovieInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie_info = movie_infos(:one)
  end

  test "should get index" do
    get movie_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_movie_info_url
    assert_response :success
  end

  test "should create movie_info" do
    assert_difference('MovieInfo.count') do
      post movie_infos_url, params: { movie_info: { rating: @movie_info.rating, title: @movie_info.title, total_gross: @movie_info.total_gross } }
    end

    assert_redirected_to movie_info_url(MovieInfo.last)
  end

  test "should show movie_info" do
    get movie_info_url(@movie_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_movie_info_url(@movie_info)
    assert_response :success
  end

  test "should update movie_info" do
    patch movie_info_url(@movie_info), params: { movie_info: { rating: @movie_info.rating, title: @movie_info.title, total_gross: @movie_info.total_gross } }
    assert_redirected_to movie_info_url(@movie_info)
  end

  test "should destroy movie_info" do
    assert_difference('MovieInfo.count', -1) do
      delete movie_info_url(@movie_info)
    end

    assert_redirected_to movie_infos_url
  end
end
