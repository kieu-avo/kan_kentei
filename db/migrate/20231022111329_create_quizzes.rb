class CreateQuizzes < ActiveRecord::Migration[7.0]
  def change
    create_table :quizzes do |t|
      t.references :test_category, null: false, foreign_key: true
      t.text :content, null: false
      t.string :youtube_url
      t.string :image_url

      t.timestamps
    end
  end
end
