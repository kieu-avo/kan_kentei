class TestCommentsController < ApplicationController
  before_action :set_category, only: %i[index new create show edit update]

  def index
    @test_comments = @category.test_comments.includes(:user, :souvenir_photo).order(created_at: :desc)
    # @test_comments = TestComment.all.includes(:user, :test_category, :souvenir_photo).order(created_at: :desc)
    @souvenir = SouvenirPhoto.where(test_category_id: @category.id)
  end

  def new
    @test_comment = TestComment.new
    @souvenir = SouvenirPhoto.where(test_category_id: @category.id).order("RANDOM()").first
  end

  def create
    @test_comment = current_user.test_comments.build(test_comment_params)
    if @test_comment.save
      # redirect_to category_test_comment_path(@category, @test_comment), success: "コメントを投稿しました"
      redirect_to category_test_comments_path(@category), success: "コメントを投稿しました。"
    else
      @souvenir = SouvenirPhoto.find(test_comment_params[:souvenir_photo_id])
      flash.now[:error] = "投稿に失敗しました"
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @test_comment = current_user.test_comments.find(params[:id])
    @souvenir = @test_comment.souvenir_photo
    # @souvenir = @test_comment.souvenir_photo
  end

  def edit
    @test_comment = current_user.test_comments.find(params[:id])
    # @test_comment = TestComment.find(params[:id])
    @souvenir = @test_comment.souvenir_photo
  end

  def update
    @test_comment = current_user.test_comments.find(params[:id])
    @souvenir = @test_comment.souvenir_photo

    if @test_comment.update(test_comment_params)
      redirect_to category_test_comment_path(@category, @test_comment), success: "コメントを更新しました"
    else
      flash.now[:error] = "更新を失敗しました。"
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def test_comment_params
    params.require(:test_comment).permit(:content, :souvenir_photo_id, :test_category_id)
  end

  def set_category
    @category = TestCategory.find(params[:category_id])
  end
end
