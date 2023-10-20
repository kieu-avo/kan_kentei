class QuizzesController < ApplicationController

  def index
    if params[:place]
      @quizzes = Quiz.select_category(params[:place])
    end
  end

end
