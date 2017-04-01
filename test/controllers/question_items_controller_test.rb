require 'test_helper'

class QuestionItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @question_item = question_items(:one)
  end

  test "should get index" do
    get question_items_url
    assert_response :success
  end

  test "should get new" do
    get new_question_item_url
    assert_response :success
  end

  test "should create question_item" do
    assert_difference('QuestionItem.count') do
      post question_items_url, params: { question_item: { content: @question_item.content, question_id: @question_item.question_id } }
    end

    assert_redirected_to question_item_url(QuestionItem.last)
  end

  test "should show question_item" do
    get question_item_url(@question_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_question_item_url(@question_item)
    assert_response :success
  end

  test "should update question_item" do
    patch question_item_url(@question_item), params: { question_item: { content: @question_item.content, question_id: @question_item.question_id } }
    assert_redirected_to question_item_url(@question_item)
  end

  test "should destroy question_item" do
    assert_difference('QuestionItem.count', -1) do
      delete question_item_url(@question_item)
    end

    assert_redirected_to question_items_url
  end
end
