class PassedListsController < ApplicationController
  def index
    @passed_quizzes = current_user.passed_quizzes
    @test_comments = current_user.test_comments
  end
end
