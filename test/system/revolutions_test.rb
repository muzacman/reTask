require "application_system_test_case"

class RevolutionsTest < ApplicationSystemTestCase
  setup do
    @revolution = revolutions(:one)
  end

  test "visiting the index" do
    visit revolutions_url
    assert_selector "h1", text: "Revolutions"
  end

  test "creating a Revolution" do
    visit revolutions_url
    click_on "New Revolution"

    fill_in "Repeater vals", with: @revolution.repeater_vals
    fill_in "Status", with: @revolution.status
    fill_in "Total seconds", with: @revolution.total_seconds
    click_on "Create Revolution"

    assert_text "Revolution was successfully created"
    click_on "Back"
  end

  test "updating a Revolution" do
    visit revolutions_url
    click_on "Edit", match: :first

    fill_in "Repeater vals", with: @revolution.repeater_vals
    fill_in "Status", with: @revolution.status
    fill_in "Total seconds", with: @revolution.total_seconds
    click_on "Update Revolution"

    assert_text "Revolution was successfully updated"
    click_on "Back"
  end

  test "destroying a Revolution" do
    visit revolutions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Revolution was successfully destroyed"
  end
end
