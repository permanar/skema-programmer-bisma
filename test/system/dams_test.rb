require "application_system_test_case"

class DamsTest < ApplicationSystemTestCase
  setup do
    @dam = dams(:one)
  end

  test "visiting the index" do
    visit dams_url
    assert_selector "h1", text: "Dams"
  end

  test "creating a Dam" do
    visit dams_url
    click_on "New Dam"

    fill_in "Dam created", with: @dam.dam_created
    fill_in "Name", with: @dam.name
    fill_in "Region", with: @dam.region
    fill_in "Size", with: @dam.size
    click_on "Create Dam"

    assert_text "Dam was successfully created"
    click_on "Back"
  end

  test "updating a Dam" do
    visit dams_url
    click_on "Edit", match: :first

    fill_in "Dam created", with: @dam.dam_created
    fill_in "Name", with: @dam.name
    fill_in "Region", with: @dam.region
    fill_in "Size", with: @dam.size
    click_on "Update Dam"

    assert_text "Dam was successfully updated"
    click_on "Back"
  end

  test "destroying a Dam" do
    visit dams_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dam was successfully destroyed"
  end
end
