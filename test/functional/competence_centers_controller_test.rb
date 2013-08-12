require 'test_helper'

class CompetenceCentersControllerTest < ActionController::TestCase
  setup do
    @competence_center = competence_centers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:competence_centers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create competence_center" do
    assert_difference('CompetenceCenter.count') do
      post :create, competence_center: { name: @competence_center.name }
    end

    assert_redirected_to competence_center_path(assigns(:competence_center))
  end

  test "should show competence_center" do
    get :show, id: @competence_center
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @competence_center
    assert_response :success
  end

  test "should update competence_center" do
    put :update, id: @competence_center, competence_center: { name: @competence_center.name }
    assert_redirected_to competence_center_path(assigns(:competence_center))
  end

  test "should destroy competence_center" do
    assert_difference('CompetenceCenter.count', -1) do
      delete :destroy, id: @competence_center
    end

    assert_redirected_to competence_centers_path
  end
end
