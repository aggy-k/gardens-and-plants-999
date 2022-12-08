class CreatePlantTags < ActiveRecord::Migration[7.0]
  def change
    create_table :plant_tags do |t|
      t.references :tag, null: false, foreign_key: true
      t.references :plant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
