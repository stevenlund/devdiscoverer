require 'test_helper'

class FeaturesControllerTest < ActionController::TestCase
  setup do
    @developer = developers(:one)
    @feature = features(:one)
  end

  test "should get index" do
    get :index, params: { developer_id: @developer }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { developer_id: @developer }
    assert_response :success
  end

  test "should create feature" do
    assert_difference('Feature.count') do
      post :create, params: { developer_id: @developer, feature: @feature.attributes }
    end

    assert_redirected_to developer_feature_path(@developer, Feature.last)
  end

  test "should show feature" do
    get :show, params: { developer_id: @developer, id: @feature }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { developer_id: @developer, id: @feature }
    assert_response :success
  end

  test "should update feature" do
    put :update, params: { developer_id: @developer, id: @feature, feature: @feature.attributes }
    assert_redirected_to developer_feature_path(@developer, Feature.last)
  end

  test "should destroy feature" do
    assert_difference('Feature.count', -1) do
      delete :destroy, params: { developer_id: @developer, id: @feature }
    end

    assert_redirected_to developer_features_path(@developer)
  end
end
