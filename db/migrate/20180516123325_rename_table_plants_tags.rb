class RenameTablePlantsTags < ActiveRecord::Migration[5.2]
  def change
    rename_table :plants_tags, :plant_tags
  end
end
