require "application_system_test_case"

class MovieInfosTest < ApplicationSystemTestCase
  setup do
    @movie_info = movie_infos(:one)
  end

  test "visiting the index" do
    visit movie_infos_url
    assert_selector "h1", text: "Movie Infos"
  end

  test "creating a Movie info" do
    visit movie_infos_url
    click_on "New Movie Info"

    fill_in "Rating", with: @movie_info.rating
    fill_in "Title", with: @movie_info.title
    fill_in "Total gross", with: @movie_info.total_gross
    click_on "Create Movie info"

    assert_text "Movie info was successfully created"
    click_on "Back"
  end

  test "updating a Movie info" do
    visit movie_infos_url
    click_on "Edit", match: :first

    fill_in "Rating", with: @movie_info.rating
    fill_in "Title", with: @movie_info.title
    fill_in "Total gross", with: @movie_info.total_gross
    click_on "Update Movie info"

    assert_text "Movie info was successfully updated"
    click_on "Back"
  end

  test "destroying a Movie info" do
    visit movie_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Movie info was successfully destroyed"
  end
end
