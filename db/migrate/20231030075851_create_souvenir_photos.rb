class CreateSouvenirPhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :souvenir_photos do |t|
      t.references :test_category, null: false, foreign_key: true
      t.string :name, null: false
      t.string :image_url

      t.timestamps
    end
  end
end
