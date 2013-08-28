require 'test_helper'

class MessagesControllerTest < ActionController::TestCase
  setup do
    @message = messages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:messages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create message" do
    assert_difference('Message.count') do
      post :create, message: { content: @message.content, destination: @message.destination, gw_id: @message.gw_id, msg_id: @message.msg_id, origin: @message.origin, re_msg_status: @message.re_msg_status, re_status: @message.re_status, user_id: @message.user_id }
    end

    assert_redirected_to message_path(assigns(:message))
  end

  test "should show message" do
    get :show, id: @message
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @message
    assert_response :success
  end

  test "should update message" do
    patch :update, id: @message, message: { content: @message.content, destination: @message.destination, gw_id: @message.gw_id, msg_id: @message.msg_id, origin: @message.origin, re_msg_status: @message.re_msg_status, re_status: @message.re_status, user_id: @message.user_id }
    assert_redirected_to message_path(assigns(:message))
  end

  test "should destroy message" do
    assert_difference('Message.count', -1) do
      delete :destroy, id: @message
    end

    assert_redirected_to messages_path
  end
end
