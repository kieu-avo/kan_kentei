class PassedListsController < ApplicationController
  def index
    @passed_quizzes = current_user.passed_quizzes.order(created_at: :desc)
    @japan_quizzes = @passed_quizzes.select { |quiz| quiz.test_category.region == 'japan' }
    @foreign_quizzes = @passed_quizzes.select { |quiz| quiz.test_category.region == 'foreign' }
    @test_comments = current_user.test_comments
  end
end
