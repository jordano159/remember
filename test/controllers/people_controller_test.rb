require "test_helper"

class PeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person = people(:one)
  end

  test "should get index" do
    get people_url
    assert_response :success
  end

  test "should get new" do
    get new_person_url
    assert_response :success
  end

  test "should create person" do
    assert_difference("Person.count") do
      post people_url, params: { person: { age: @person.age, burial_place: @person.burial_place, fall_date: @person.fall_date, garin: @person.garin, heb_fall_date: @person.heb_fall_date, ken: @person.ken, name: @person.name, rank: @person.rank } }
    end

    assert_redirected_to person_url(Person.last)
  end

  test "should show person" do
    get person_url(@person)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_url(@person)
    assert_response :success
  end

  test "should update person" do
    patch person_url(@person), params: { person: { age: @person.age, burial_place: @person.burial_place, fall_date: @person.fall_date, garin: @person.garin, heb_fall_date: @person.heb_fall_date, ken: @person.ken, name: @person.name, rank: @person.rank } }
    assert_redirected_to person_url(@person)
  end

  test "should destroy person" do
    assert_difference("Person.count", -1) do
      delete person_url(@person)
    end

    assert_redirected_to people_url
  end
end
