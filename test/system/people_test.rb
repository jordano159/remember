require "application_system_test_case"

class PeopleTest < ApplicationSystemTestCase
  setup do
    @person = people(:one)
  end

  test "visiting the index" do
    visit people_url
    assert_selector "h1", text: "People"
  end

  test "should create person" do
    visit people_url
    click_on "New person"

    fill_in "Age", with: @person.age
    fill_in "Burial place", with: @person.burial_place
    fill_in "Fall date", with: @person.fall_date
    fill_in "Garin", with: @person.garin
    fill_in "Heb fall date", with: @person.heb_fall_date
    fill_in "Ken", with: @person.ken
    fill_in "Name", with: @person.name
    fill_in "Rank", with: @person.rank
    click_on "Create Person"

    assert_text "Person was successfully created"
    click_on "Back"
  end

  test "should update Person" do
    visit person_url(@person)
    click_on "Edit this person", match: :first

    fill_in "Age", with: @person.age
    fill_in "Burial place", with: @person.burial_place
    fill_in "Fall date", with: @person.fall_date
    fill_in "Garin", with: @person.garin
    fill_in "Heb fall date", with: @person.heb_fall_date
    fill_in "Ken", with: @person.ken
    fill_in "Name", with: @person.name
    fill_in "Rank", with: @person.rank
    click_on "Update Person"

    assert_text "Person was successfully updated"
    click_on "Back"
  end

  test "should destroy Person" do
    visit person_url(@person)
    click_on "Destroy this person", match: :first

    assert_text "Person was successfully destroyed"
  end
end
