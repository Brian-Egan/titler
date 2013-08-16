require 'test_helper'

class OldMonstersControllerTest < ActionController::TestCase
  setup do
    @old_monster = old_monsters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:old_monsters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create old_monster" do
    assert_difference('OldMonster.count') do
      post :create, old_monster: {  }
    end

    assert_redirected_to old_monster_path(assigns(:old_monster))
  end

  test "should show old_monster" do
    get :show, id: @old_monster
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @old_monster
    assert_response :success
  end

  test "should update old_monster" do
    patch :update, id: @old_monster, old_monster: {  }
    assert_redirected_to old_monster_path(assigns(:old_monster))
  end

  test "should destroy old_monster" do
    assert_difference('OldMonster.count', -1) do
      delete :destroy, id: @old_monster
    end

    assert_redirected_to old_monsters_path
  end
end
