class AddRegionToTestCategories < ActiveRecord::Migration[7.0]
  def change
    add_column :test_categories, :region, :string
  end
end
