class TestCommentsController < ApplicationController
  before_action :set_category, only: %i[index new create show edit]

  def index
    @test_comments = TestComment.all.includes(:user, :test_category, :souvenir_photo).order(created_at: :desc)
    @souvenir = SouvenirPhoto.where(test_category_id: @category.id)
  end

  def new
    @test_comment = TestComment.new
    @souvenir = SouvenirPhoto.where(test_category_id: @category.id).order("RANDOM()").first
  end

  def create
    @test_comment = current_user.test_comments.build(test_comment_params)
    if @test_comment.save
      redirect_to category_test_comments_path(@category), success: "コメントを投稿しました。"
    end
  end

  def show
    @test_comment = TestComment.find(params[:id])
    #@souvenir = SouvenirPhoto.where(test_category_id: @category.id)
  end

  def edit
    @test_comment = TestComment.find(params[:id])
    #@souvenir = @test_comment.souvenir_photo
  end

  private

  def test_comment_params
    params.require(:test_comment).permit(:content, :souvenir_photo_id, :test_category_id)
  end

  def set_category
    @category = TestCategory.find(params[:category_id])
  end
end
