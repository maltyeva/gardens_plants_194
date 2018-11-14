require "application_system_test_case"

class ParksTest < ApplicationSystemTestCase
  setup do
    @park = parks(:one)
  end

  test "visiting the index" do
    visit parks_url
    assert_selector "h1", text: "Parks"
  end

  test "creating a Park" do
    visit parks_url
    click_on "New Park"

    fill_in "Address", with: @park.address
    fill_in "Banner Url", with: @park.banner_url
    fill_in "Name", with: @park.name
    fill_in "Rating", with: @park.rating
    click_on "Create Park"

    assert_text "Park was successfully created"
    click_on "Back"
  end

  test "updating a Park" do
    visit parks_url
    click_on "Edit", match: :first

    fill_in "Address", with: @park.address
    fill_in "Banner Url", with: @park.banner_url
    fill_in "Name", with: @park.name
    fill_in "Rating", with: @park.rating
    click_on "Update Park"

    assert_text "Park was successfully updated"
    click_on "Back"
  end

  test "destroying a Park" do
    visit parks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Park was successfully destroyed"
  end
end