class CreateSightings < ActiveRecord::Migration[7.1]
  def change
    create_table :sightings do |t|
      t.integer :wildlife_id
      t.integer :latitude
      t.integer :longitude
      t.date :date

      t.timestamps
    end
  end
end
