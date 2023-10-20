class JapanAndOverseasTestCategoriesController < ApplicationController

  def index
    @japan_and_overseas = JapanAndOverseasTestCategory.all
  end

end
