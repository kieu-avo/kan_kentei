class QuizzesController < ApplicationController

  def index
    @place = JapanAndOverseasTestCategory.find(params[:category_id])
    @quizzes = @place.quizzes.includes(:quiz_choices)
  end

end

