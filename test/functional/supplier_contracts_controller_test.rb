require 'test_helper'

class SupplierContractsControllerTest < ActionController::TestCase
  setup do
    @supplier_contract = supplier_contracts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:supplier_contracts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supplier_contract" do
    assert_difference('SupplierContract.count') do
      post :create, supplier_contract: { description: @supplier_contract.description, initial_date: @supplier_contract.initial_date, observation: @supplier_contract.observation }
    end

    assert_redirected_to supplier_contract_path(assigns(:supplier_contract))
  end

  test "should show supplier_contract" do
    get :show, id: @supplier_contract
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @supplier_contract
    assert_response :success
  end

  test "should update supplier_contract" do
    put :update, id: @supplier_contract, supplier_contract: { description: @supplier_contract.description, initial_date: @supplier_contract.initial_date, observation: @supplier_contract.observation }
    assert_redirected_to supplier_contract_path(assigns(:supplier_contract))
  end

  test "should destroy supplier_contract" do
    assert_difference('SupplierContract.count', -1) do
      delete :destroy, id: @supplier_contract
    end

    assert_redirected_to supplier_contracts_path
  end
end
