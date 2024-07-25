require "application_system_test_case"

class TodozsTest < ApplicationSystemTestCase
  setup do
    @todoz = todozs(:one)
  end

  test "visiting the index" do
    visit todozs_url
    assert_selector "h1", text: "Todozs"
  end

  test "should create todoz" do
    visit todozs_url
    click_on "New todoz"

    fill_in "Name", with: @todoz.name
    fill_in "Task", with: @todoz.task
    click_on "Create Todoz"

    assert_text "Todoz was successfully created"
    click_on "Back"
  end

  test "should update Todoz" do
    visit todoz_url(@todoz)
    click_on "Edit this todoz", match: :first

    fill_in "Name", with: @todoz.name
    fill_in "Task", with: @todoz.task
    click_on "Update Todoz"

    assert_text "Todoz was successfully updated"
    click_on "Back"
  end

  test "should destroy Todoz" do
    visit todoz_url(@todoz)
    click_on "Destroy this todoz", match: :first

    assert_text "Todoz was successfully destroyed"
  end
end
