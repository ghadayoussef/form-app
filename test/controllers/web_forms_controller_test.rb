require 'test_helper'

class WebFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @web_form = web_forms(:one)
  end

  test "should get index" do
    get web_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_web_form_url
    assert_response :success
  end

  test "should create web_form" do
    assert_difference('WebForm.count') do
      post web_forms_url, params: { web_form: { description: @web_form.description, image: @web_form.image, title: @web_form.title } }
    end

    assert_redirected_to web_form_url(WebForm.last)
  end

  test "should show web_form" do
    get web_form_url(@web_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_web_form_url(@web_form)
    assert_response :success
  end

  test "should update web_form" do
    patch web_form_url(@web_form), params: { web_form: { description: @web_form.description, image: @web_form.image, title: @web_form.title } }
    assert_redirected_to web_form_url(@web_form)
  end

  test "should destroy web_form" do
    assert_difference('WebForm.count', -1) do
      delete web_form_url(@web_form)
    end

    assert_redirected_to web_forms_url
  end
end
