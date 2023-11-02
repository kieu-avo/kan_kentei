class TestCommentsController < ApplicationController
  before_action :set_category, only: %i[index new create show]

  def index
    @test_comment = TestComment.all
  end

  def new
    @test_comment = TestComment.new
    @souvenir = SouvenirPhoto.where(test_category_id: @category.id).order("RANDOM()").first
  end

  def create
    @test_comment = TestComment.new(test_comment_params)
    if @test_comment.save
      redirect_to category_test_comments_path(@category), success = "コメントを投稿しました。"
    else
      puts @test_comment.errors.full_messages
    end
  end

  private

  def test_comment_params
    params.require(:test_comment).permit(:content, :souvenir_photo_id, :test_category_id, :user_id)
  end

  def set_category
    @category = TestCategory.find(params[:category_id])
  end
end
