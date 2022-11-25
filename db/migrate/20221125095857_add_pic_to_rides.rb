class AddPicToRides < ActiveRecord::Migration[7.0]
  def change
    add_column :rides, :photo, :string
  end
end
