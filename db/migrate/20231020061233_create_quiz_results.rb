class CreateQuizResults < ActiveRecord::Migration[7.0]
  def change
    create_table :quiz_results do |t|
      t.references :japan_and_overseas_test_category, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :score, null: false
      t.boolean :result, null: false, default: false
      
      t.timestamps
    end
  end
end
