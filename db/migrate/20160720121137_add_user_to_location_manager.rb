class AddUserToLocationManager < ActiveRecord::Migration[5.0]
  def change
    add_reference :location_managers, :user, foreign_key: true
  end
end
