require "application_system_test_case"

class RelativesTest < ApplicationSystemTestCase
  setup do
    @relative = relatives(:one)
  end

  test "visiting the index" do
    visit relatives_url
    assert_selector "h1", text: "Relatives"
  end

  test "should create relative" do
    visit relatives_url
    click_on "New relative"

    click_on "Create Relative"

    assert_text "Relative was successfully created"
    click_on "Back"
  end

  test "should update Relative" do
    visit relative_url(@relative)
    click_on "Edit this relative", match: :first

    click_on "Update Relative"

    assert_text "Relative was successfully updated"
    click_on "Back"
  end

  test "should destroy Relative" do
    visit relative_url(@relative)
    click_on "Destroy this relative", match: :first

    assert_text "Relative was successfully destroyed"
  end
end
