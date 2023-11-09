class PassedListsController < ApplicationController
  def index
    #@passed_quizzes = current_user.passed_quizzes
    #@latest_test_comments = current_user.latest_test_comments

      @passed_quizzes = current_user.passed_quizzes
      @latest_test_comments = current_user.test_comments

  end
end
