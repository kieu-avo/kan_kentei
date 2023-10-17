class CreateJapanAndOverseasTestCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :japan_and_overseas_test_categories do |t|
      t.string :title, null: false

      t.timestamps
    end
  end
end
