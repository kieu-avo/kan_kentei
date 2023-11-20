class AddExplanationToSouvenirPhotos < ActiveRecord::Migration[7.0]
  def change
    add_column :souvenir_photos, :explanation, :text
  end
end
