require "application_system_test_case"

class WebFormsTest < ApplicationSystemTestCase
  setup do
    @web_form = web_forms(:one)
  end

  test "visiting the index" do
    visit web_forms_url
    assert_selector "h1", text: "Web Forms"
  end

  test "creating a Web form" do
    visit web_forms_url
    click_on "New Web Form"

    fill_in "Description", with: @web_form.description
    fill_in "Image", with: @web_form.image
    fill_in "Title", with: @web_form.title
    click_on "Create Web form"

    assert_text "Web form was successfully created"
    click_on "Back"
  end

  test "updating a Web form" do
    visit web_forms_url
    click_on "Edit", match: :first

    fill_in "Description", with: @web_form.description
    fill_in "Image", with: @web_form.image
    fill_in "Title", with: @web_form.title
    click_on "Update Web form"

    assert_text "Web form was successfully updated"
    click_on "Back"
  end

  test "destroying a Web form" do
    visit web_forms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Web form was successfully destroyed"
  end
end
