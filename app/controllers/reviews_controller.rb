class ReviewsController < ApplicationController
  skip_before_action :require_login, only: %i[index]
  before_action :set_category, only: %i[index new create]
  before_action :set_review, only: %i[index new create]

  def index
    @average_ratings = {}

    @reviews.each do |review|
      unique_user_count = review.user_review_answers.select(:user_id).distinct.count
      @average_ratings[review.id] = if unique_user_count.positive?
                                      review.user_review_answers.average(:rating).to_f.round(1)
                                    else
                                      0
                                    end
    end

    @total_users = UserReviewAnswer.count_user_answer(@category)
  end

  def new
    if current_user.already_reviewed?(@category)
      redirect_to new_category_test_comment_path(category_id: @category.id)
    else
      @user_review_answer = UserReviewAnswer.new
    end
  end

  # ユーザーからの回答をDBに保存
  def create
    if current_user.already_reviewed?(@category)
      redirect_to new_category_test_comment_path(category_id: @category.id)
    elsif save_user_review
      redirect_to new_category_test_comment_path(category_id: @category.id), success: t('.thanks')
    else
      flash.now[:error] = t('.blank')
      render :new, status: :unprocessable_entity
    end
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

  def save_user_review
    ActiveRecord::Base.transaction do
      user_review_params[:rating].each do |review, rating|
        @user_review_answer = UserReviewAnswer.new(
          rating: rating.to_f,
          user_id: current_user.id,
          review_id: review
        )

        return false unless @user_review_answer.save
      end
    end
    true
  end
end
