class TestCategoriesController < ApplicationController
  skip_before_action :require_login, only: %i[index]

  def index
    @q = TestCategory.ransack(params[:q])
    @categories = @q.result(distinct: true)
    @finland_quiz = TestCategory.find_by(title: "フィンランド")
  end

  def search_result
    @categories = TestCategory.where('LOWER(title) LIKE ?', "%#{params[:q]}%")
    respond_to do |format|
      format.js { render partial: 'search_result', locals: { categories: @categories } }
    end
  end
end
