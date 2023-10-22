class CreateUserQuizAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :user_quiz_answers do |t|
      t.references :quiz, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :quiz_choice, null: false, foreign_key: true

      t.timestamps
    end
  end
end
