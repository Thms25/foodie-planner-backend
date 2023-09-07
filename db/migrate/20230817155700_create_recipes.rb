class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :description
      t.float :rate
      t.integer :prep_time
      t.integer :servings
      t.string :category

      t.timestamps
    end
  end
end
