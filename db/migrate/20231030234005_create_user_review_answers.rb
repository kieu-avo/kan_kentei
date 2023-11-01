class CreateUserReviewAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :user_review_answers do |t|
      t.references :user, null: false, foreign_key: true
      t.references :review, null: false, foreign_key: true
      t.float :rating, null: false

      t.timestamps
    end
  end
end
