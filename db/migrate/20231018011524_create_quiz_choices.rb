class CreateQuizChoices < ActiveRecord::Migration[7.0]
  def change
    create_table :quiz_choices do |t|
      t.references :quiz, null: false, foreign_key: true
      t.text :content, null: false
      t.boolean :correct_answer, null: false, default: false
      t.text :explanation

      t.timestamps
    end
  end
end
