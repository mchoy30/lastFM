require "application_system_test_case"

class AlbumInformationsTest < ApplicationSystemTestCase
  setup do
    @album_information = album_informations(:one)
  end

  test "visiting the index" do
    visit album_informations_url
    assert_selector "h1", text: "Album Informations"
  end

  test "creating a Album information" do
    visit album_informations_url
    click_on "New Album Information"

    fill_in "Date", with: @album_information.date
    fill_in "Play count", with: @album_information.play_count
    click_on "Create Album information"

    assert_text "Album information was successfully created"
    click_on "Back"
  end

  test "updating a Album information" do
    visit album_informations_url
    click_on "Edit", match: :first

    fill_in "Date", with: @album_information.date
    fill_in "Play count", with: @album_information.play_count
    click_on "Update Album information"

    assert_text "Album information was successfully updated"
    click_on "Back"
  end

  test "destroying a Album information" do
    visit album_informations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Album information was successfully destroyed"
  end
end
