require 'test_helper'

class SkillsControllerTest < ActionController::TestCase
  setup do
    @developer = developers(:one)
    @skill = skills(:one)
  end

  test "should get index" do
    get :index, params: { developer_id: @developer }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { developer_id: @developer }
    assert_response :success
  end

  test "should create skill" do
    assert_difference('Skill.count') do
      post :create, params: { developer_id: @developer, skill: @skill.attributes }
    end

    assert_redirected_to developer_skill_path(@developer, Skill.last)
  end

  test "should show skill" do
    get :show, params: { developer_id: @developer, id: @skill }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { developer_id: @developer, id: @skill }
    assert_response :success
  end

  test "should update skill" do
    put :update, params: { developer_id: @developer, id: @skill, skill: @skill.attributes }
    assert_redirected_to developer_skill_path(@developer, Skill.last)
  end

  test "should destroy skill" do
    assert_difference('Skill.count', -1) do
      delete :destroy, params: { developer_id: @developer, id: @skill }
    end

    assert_redirected_to developer_skills_path(@developer)
  end
end
