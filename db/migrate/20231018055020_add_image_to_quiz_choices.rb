class AddImageToQuizChoices < ActiveRecord::Migration[7.0]
  def change
    add_column :quiz_choices, :image_url, :string
  end
end
