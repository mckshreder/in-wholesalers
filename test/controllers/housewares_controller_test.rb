require 'test_helper'

class HousewaresControllerTest < ActionController::TestCase
  test "should get baskets_storage_racks" do
    get :baskets_storage_racks
    assert_response :success
  end

  test "should get cookware" do
    get :cookware
    assert_response :success
  end

  test "should get food_containers" do
    get :food_containers
    assert_response :success
  end

  test "should get laundry" do
    get :laundry
    assert_response :success
  end

  test "should get tabletop_dining" do
    get :tabletop_dining
    assert_response :success
  end

  test "should get furniture" do
    get :furniture
    assert_response :success
  end

  test "should get cleaning_tools" do
    get :cleaning_tools
    assert_response :success
  end

  test "should get paper_foil_plastic" do
    get :paper_foil_plastic
    assert_response :success
  end

  test "should get house_chemicals" do
    get :house_chemicals
    assert_response :success
  end

  test "should get licensed_housewares" do
    get :licensed_housewares
    assert_response :success
  end

  test "should get magnets_memo_holders" do
    get :magnets_memo_holders
    assert_response :success
  end

  test "should get package_deals" do
    get :package_deals
    assert_response :success
  end

end
