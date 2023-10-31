class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.references :test_category, null: false, foreign_key: true
      t.string :content, null: false

      t.timestamps
    end
  end
end
