require "application_system_test_case"

class PropertiesTest < ApplicationSystemTestCase
  setup do
    @property = properties(:one)
  end

  test "visiting the index" do
    visit properties_url
    assert_selector "h1", text: "Properties"
  end

  test "creating a Property" do
    visit properties_url
    click_on "New Property"

    fill_in "Bedroom", with: @property.bedroom
    fill_in "Buildsize", with: @property.buildsize
    fill_in "Floor", with: @property.floor
    fill_in "Landsize", with: @property.landsize
    fill_in "Locations", with: @property.locations
    fill_in "Parking", with: @property.parking
    fill_in "Price", with: @property.price
    fill_in "Title", with: @property.title
    fill_in "Toilet", with: @property.toilet
    fill_in "User", with: @property.user_id
    click_on "Create Property"

    assert_text "Property was successfully created"
    click_on "Back"
  end

  test "updating a Property" do
    visit properties_url
    click_on "Edit", match: :first

    fill_in "Bedroom", with: @property.bedroom
    fill_in "Buildsize", with: @property.buildsize
    fill_in "Floor", with: @property.floor
    fill_in "Landsize", with: @property.landsize
    fill_in "Locations", with: @property.locations
    fill_in "Parking", with: @property.parking
    fill_in "Price", with: @property.price
    fill_in "Title", with: @property.title
    fill_in "Toilet", with: @property.toilet
    fill_in "User", with: @property.user_id
    click_on "Update Property"

    assert_text "Property was successfully updated"
    click_on "Back"
  end

  test "destroying a Property" do
    visit properties_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Property was successfully destroyed"
  end
end
