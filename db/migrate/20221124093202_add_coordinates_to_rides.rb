class AddCoordinatesToRides < ActiveRecord::Migration[7.0]
  def change
    add_column :rides, :latitude, :float
    add_column :rides, :longitude, :float
  end
end
