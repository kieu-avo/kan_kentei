class PassedListsController < ApplicationController
  def index
    @passed_quizzes = current_user.quiz_results.includes(:test_category).where(is_passed: true)
    @latest_test_comments = current_user.test_comments.where(test_category: @passed_quizzes.map(&:test_category)).order(created_at: :desc).distinct.pluck(:test_category_id, :id).to_h
  end
end
