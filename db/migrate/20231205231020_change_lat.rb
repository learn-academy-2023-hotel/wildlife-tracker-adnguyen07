class ChangeLat < ActiveRecord::Migration[7.1]
  def change
    change_column :sightings, :latitude, :string
  end
end
