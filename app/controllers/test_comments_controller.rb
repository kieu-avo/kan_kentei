class TestCommentsController < ApplicationController
  before_action :set_category, only: %i[index new create show edit update]

  def index
    @q = @category.test_comments.ransack(params[:q])
    @test_comments = @q.result(distinct: true).includes(:user, :souvenir_photo).order(created_at: :desc).page(params[:page]).per(6)
  end

  def new
    @reviewed = current_user.already_reviewed?(@category)
    @test_comment = TestComment.new
    @souvenir = SouvenirPhoto.where(test_category_id: @category.id).order("RANDOM()").first
  end

  def create
    @test_comment = current_user.test_comments.build(test_comment_params)
    if @test_comment.save
      redirect_to category_test_comments_path(@category), success: t('.success')
    else
      @souvenir = SouvenirPhoto.find(test_comment_params[:souvenir_photo_id])
      flash.now[:error] = t('.failed')
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @test_comment = current_user.test_comments.find(params[:id])
    @souvenir = @test_comment.souvenir_photo
  end

  def edit
    @test_comment = current_user.test_comments.find(params[:id])
    @souvenir = @test_comment.souvenir_photo
  end

  def update
    @test_comment = current_user.test_comments.find(params[:id])
    @souvenir = @test_comment.souvenir_photo

    if @test_comment.update(test_comment_params)
      redirect_to category_test_comment_path(@category, @test_comment), success: t('.success')
    else
      flash.now[:error] = t('.failed')
      render :edit, status: :unprocessable_entity
    end
  end

  def search_content
    @test_comments = TestComment.where("content LIKE ?", "%#{params[:q]}%")
    search_results(:content)
  end

  def search_user_name
    @test_comments = TestComment.joins(:user).where("users.name LIKE ?", "%#{params[:q]}%")
    search_results(:user_name)
  end

  def search_souvenir
    @test_comments = TestComment.joins(:souvenir_photo).where("souvenir_photos.name LIKE ?", "%#{params[:q]}%")
    search_results(:souvenir_photo_name)
  end

  def search_results(search_type)
    respond_to do |format|
      format.js { render partial: 'search_result', locals: { test_comments: @test_comments, search_type: } }
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
