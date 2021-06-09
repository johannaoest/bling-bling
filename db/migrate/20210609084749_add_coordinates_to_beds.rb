class AddCoordinatesToBeds < ActiveRecord::Migration[6.0]
  def change
    add_column :beds, :latitude, :float
    add_column :beds, :longitude, :float
  end
end
