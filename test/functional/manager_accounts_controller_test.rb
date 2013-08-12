require 'test_helper'

class ManagerAccountsControllerTest < ActionController::TestCase
  setup do
    @manager_account = manager_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:manager_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create manager_account" do
    assert_difference('ManagerAccount.count') do
      post :create, manager_account: { identifier: @manager_account.identifier, name: @manager_account.name }
    end

    assert_redirected_to manager_account_path(assigns(:manager_account))
  end

  test "should show manager_account" do
    get :show, id: @manager_account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @manager_account
    assert_response :success
  end

  test "should update manager_account" do
    put :update, id: @manager_account, manager_account: { identifier: @manager_account.identifier, name: @manager_account.name }
    assert_redirected_to manager_account_path(assigns(:manager_account))
  end

  test "should destroy manager_account" do
    assert_difference('ManagerAccount.count', -1) do
      delete :destroy, id: @manager_account
    end

    assert_redirected_to manager_accounts_path
  end
end
