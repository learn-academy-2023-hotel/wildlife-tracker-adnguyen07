class ChangeLong < ActiveRecord::Migration[7.1]
  def change
    change_column :sightings, :longitude, :string
  end
end
