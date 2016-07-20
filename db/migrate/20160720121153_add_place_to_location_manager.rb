class AddPlaceToLocationManager < ActiveRecord::Migration[5.0]
  def change
    add_reference :location_managers, :place, foreign_key: true
  end
end
