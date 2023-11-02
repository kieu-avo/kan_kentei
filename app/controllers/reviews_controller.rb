class ReviewsController < ApplicationController
  before_action :set_category, only: %i[index new create]
  before_action :set_review, only: %i[index new create]

  def new
    @user_review_answer = UserReviewAnswer.new
  end

  #ユーザーからの回答をDBに保存
  def create 
    user_review_params[:rating].each do |review, rating|
      @user_review_answer = UserReviewAnswer.new(
        rating: rating.to_f,
        user_id: current_user.id,
        review_id: review
      )

      unless @user_review_answer.save
        flash.now[:error] = t('.blank')
        render :new, status: :unprocessable_entity and return
      end
    end

    redirect_to new_category_test_comment_path(category_id: @category.id)
  end

  private

  def set_category
    @category = TestCategory.find(params[:category_id])
  end

  def set_review
    @reviews = Review.where(test_category: @category)
  end

  def user_review_params
    params.require(:user_review_answer).permit(:user_id, :review_id, rating: {})
  end

end
