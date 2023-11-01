class CreateTestComments < ActiveRecord::Migration[7.0]
  def change
    create_table :test_comments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :test_category, null: false, foreign_key: true
      t.references :souvenir_photo, null: false, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
