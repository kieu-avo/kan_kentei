class TestCategoriesController < ApplicationController
  skip_before_action :require_login, only: %i[index]

  def index
    @categories = TestCategory.all
  end
end
