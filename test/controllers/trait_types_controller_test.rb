require 'test_helper'

class TraitTypesControllerTest < ActionController::TestCase
  setup do
    @trait_type = trait_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trait_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trait_type" do
    assert_difference('TraitType.count') do
      post :create, trait_type: { description: @trait_type.description, display: @trait_type.display, name: @trait_type.name }
    end

    assert_redirected_to trait_type_path(assigns(:trait_type))
  end

  test "should show trait_type" do
    get :show, id: @trait_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trait_type
    assert_response :success
  end

  test "should update trait_type" do
    patch :update, id: @trait_type, trait_type: { description: @trait_type.description, display: @trait_type.display, name: @trait_type.name }
    assert_redirected_to trait_type_path(assigns(:trait_type))
  end

  test "should destroy trait_type" do
    assert_difference('TraitType.count', -1) do
      delete :destroy, id: @trait_type
    end

    assert_redirected_to trait_types_path
  end
end
