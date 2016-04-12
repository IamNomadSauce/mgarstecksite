require 'test_helper'

class ControlPanelsControllerTest < ActionController::TestCase
  setup do
    @control_panel = control_panels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:control_panels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create control_panel" do
    assert_difference('ControlPanel.count') do
      post :create, control_panel: { destroy: @control_panel.destroy, index: @control_panel.index, show: @control_panel.show, update: @control_panel.update }
    end

    assert_redirected_to control_panel_path(assigns(:control_panel))
  end

  test "should show control_panel" do
    get :show, id: @control_panel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @control_panel
    assert_response :success
  end

  test "should update control_panel" do
    patch :update, id: @control_panel, control_panel: { destroy: @control_panel.destroy, index: @control_panel.index, show: @control_panel.show, update: @control_panel.update }
    assert_redirected_to control_panel_path(assigns(:control_panel))
  end

  test "should destroy control_panel" do
    assert_difference('ControlPanel.count', -1) do
      delete :destroy, id: @control_panel
    end

    assert_redirected_to control_panels_path
  end
end
