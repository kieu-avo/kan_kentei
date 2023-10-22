class CreateTestCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :test_categories do |t|
      t.string :title, null: false

      t.timestamps
    end
  end
end
