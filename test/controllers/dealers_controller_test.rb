require 'test_helper'

class DealersControllerTest < ActionController::TestCase
  setup do
    @dealer = dealers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dealers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dealer" do
    assert_difference('Dealer.count') do
      post :create, dealer: { company: @dealer.company, email: @dealer.email, name: @dealer.name, phone: @dealer.phone, website: @dealer.website }
    end

    assert_redirected_to dealer_path(assigns(:dealer))
  end

  test "should show dealer" do
    get :show, id: @dealer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dealer
    assert_response :success
  end

  test "should update dealer" do
    patch :update, id: @dealer, dealer: { company: @dealer.company, email: @dealer.email, name: @dealer.name, phone: @dealer.phone, website: @dealer.website }
    assert_redirected_to dealer_path(assigns(:dealer))
  end

  test "should destroy dealer" do
    assert_difference('Dealer.count', -1) do
      delete :destroy, id: @dealer
    end

    assert_redirected_to dealers_path
  end
end
