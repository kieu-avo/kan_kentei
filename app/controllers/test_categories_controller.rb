class TestCategoriesController < ApplicationController
  def index
    @categories = TestCategory.all
  end
end
