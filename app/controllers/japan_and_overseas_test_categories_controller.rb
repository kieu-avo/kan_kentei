class JapanAndOverseasTestCategoriesController < ApplicationController

  def index
    @places = JapanAndOverseasTestCategory.all
  end
  
end

