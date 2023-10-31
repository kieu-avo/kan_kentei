class ReviewsController < ApplicationController
  before_action :set_category, only: %i[index new create]
  
  def new
    @reviews = Review.where(test_category: @category)
    @user_review_answer = UserReviewAnswer.new
  end

  private

  def set_category
    @category = TestCategory.find(params[:category_id])
  end

  
end
