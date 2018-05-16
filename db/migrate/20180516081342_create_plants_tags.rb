class CreatePlantsTags < ActiveRecord::Migration[5.2]
  def change
    create_table :plants_tags do |t|
      t.references :plant, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
