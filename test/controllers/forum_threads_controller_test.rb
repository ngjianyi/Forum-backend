require "test_helper"

class ForumThreadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @forum_thread = forum_threads(:one)
  end

  test "should get index" do
    get forum_threads_url, as: :json
    assert_response :success
  end

  test "should create forum_thread" do
    assert_difference("ForumThread.count") do
      post forum_threads_url, params: { forum_thread: { content: @forum_thread.content, title: @forum_thread.title } }, as: :json
    end

    assert_response :created
  end

  test "should show forum_thread" do
    get forum_thread_url(@forum_thread), as: :json
    assert_response :success
  end

  test "should update forum_thread" do
    patch forum_thread_url(@forum_thread), params: { forum_thread: { content: @forum_thread.content, title: @forum_thread.title } }, as: :json
    assert_response :success
  end

  test "should destroy forum_thread" do
    assert_difference("ForumThread.count", -1) do
      delete forum_thread_url(@forum_thread), as: :json
    end

    assert_response :no_content
  end
end
