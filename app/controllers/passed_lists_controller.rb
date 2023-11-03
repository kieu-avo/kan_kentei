class PassedListsController < ApplicationController

  def index
    @passed_quizzes = current_user.quiz_results.includes(:test_category).where(is_passed: true)
  end
  
end
